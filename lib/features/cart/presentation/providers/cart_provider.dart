import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/cart_repository.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository _repository;

  CartProvider({required CartRepository repository})
      : _repository = repository;

  List<Product> get items => _repository.getCartItems();

  void addItem(Product product) {
    _repository.addItem(product);
    notifyListeners();
  }

  void removeAll() {
    _repository.removeAllItems();
    notifyListeners();
  }

  bool isInCart(String productId) =>
      _repository.isItemInCart(productId);
}
