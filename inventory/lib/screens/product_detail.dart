import 'package:flutter/material.dart';
import 'package:inventory/models/product.dart'; // Import your Product model
import 'package:inventory/screens/list_inventory.dart'; // Import your ListInventoryPage

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ${product.fields.name}',
              style: TextStyle(fontSize: 40), // Set the font size to 20
            ),
            Text(
              'Amount: ${product.fields.amount}',
              style: TextStyle(fontSize: 40), // Set the font size to 20
            ),
            Text(
              'Price: \$${product.fields.price}',
              style: TextStyle(fontSize: 40), // Set the font size to 20
            ),
            Text(
              'Category: ${product.fields.category}',
              style: TextStyle(fontSize: 40), // Set the font size to 20
            ),
            Text(
              'Publisher: ${product.fields.publisher}',
              style: TextStyle(fontSize: 40), // Set the font size to 20
            ),
            Text(
              'Description: ${product.fields.description}',
              style: TextStyle(fontSize: 40), // Set the font size to 20
            ),
            // Add more fields as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InventoryPage(),
            ),
          );
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}

// list_inventory.dart
// Wrap the Card widget with a GestureDetector to handle taps
// return GestureDetector(
//   onTap: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProductDetailPage(product: snapshot.data![index]),
//       ),
//     );
//   },
//   child: Card(
//     // existing Card code...
//   ),
// );