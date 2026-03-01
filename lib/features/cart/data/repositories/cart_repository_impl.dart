import '../../domain/entities/product.dart';
import '../../domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = [];

  @override
  List<Product> getCartItems() => List.unmodifiable(_items);

  @override
  void addItem(Product product) => _items.add(product);

  @override
  void removeAllItems() => _items.clear();

  @override
  bool isItemInCart(String productId) =>
      _items.any((p) => p.id == productId);
}
