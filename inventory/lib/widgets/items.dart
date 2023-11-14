// import 'package:flutter/material.dart';
// import 'package:inventory/screens/daftar.dart';
// import 'package:inventory/screens/list_inventory.dart';

class Item {
  static final List<Item> defaultItems = [
    Item(name: "New Item" ,amount: 1 ,price: 10.00, category:"new category", publisher: "new publisher", description:"new item"),
    Item(name: "Another Item" ,amount: 2 ,price: 20.00, category:"another category", publisher: "another publisher", description:"another item"),
    Item(name: "Third Item" ,amount: 3 ,price: 30.00, category:"third category", publisher: "third publisher", description:"third item"),
    ];

  final String name;
  final int amount;
  final double price;
  final String category;
  final String publisher;
  final String description;

  Item({required this.name, required this.amount, required this.price, required this.category, required this.publisher, required this.description});
}

