import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<CartModel>(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

// 1. state model (business logic)
class CartModel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void add(String item) {
    _items.add(item);
    notifyListeners();
  }

  void removeall() {
    _items.clear();
    notifyListeners();
  }
}

// 2. UI layer
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Text('State Model Added')),
    );
  }
}