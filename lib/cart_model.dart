import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  List<Map<String, dynamic>> _items = [];

  List<Map<String, dynamic>> get items => _items;

  void addItem(Map<String, dynamic> item) {
    _items.add(item);
    notifyListeners(); // Notify listeners that the state has changed
  }
}
