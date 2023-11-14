import "package:flutter/material.dart";
import 'package:inventory/screens/list_inventory.dart';
import 'package:inventory/screens/menu.dart';
import 'package:inventory/screens/form.dart';
import 'package:inventory/widgets/items.dart';

class InventoryCard extends StatelessWidget {
  final ItemCard item;

  const InventoryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.name == "See Game Inventory") {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListInventory(),
                ));
          }

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Add New Game") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ShopFormPage()),
            );
          }
        },

        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
