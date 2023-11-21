import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:inventory/models/product.dart';
import 'package:http/http.dart' as http;
import 'package:inventory/screens/product_detail.dart';
import 'package:inventory/widgets/items.dart';
import 'package:inventory/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class InventoryPage extends StatefulWidget {
    const InventoryPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}
class _ProductPageState extends State<InventoryPage> {
Future<List<Product>> fetchProduct(CookieRequest request) async {
    final response = await http.get(
    Uri.parse('http://clarence-grady-tugas.pbp.cs.ui.ac.id/get-product'),
    headers: request.headers,
  );
      

      // Perform error handling for the response
      if (response.statusCode == 200) {
        // Decode the response body
        var data = jsonDecode(utf8.decode(response.bodyBytes));

        // Convert the JSON data to a list of Product objects
        List<Product> list_product = [];
        for (var d in data) {
          if (d != null) {
            list_product.add(Product.fromJson(d));
          }
        }
        return list_product;
      } else {
        throw Exception('Failed to fetch products');
      }
}

  @override
  Widget build(BuildContext context) {
  final request = context.watch<CookieRequest>();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Inventory List'),
      ),
      endDrawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        
        builder: (context, AsyncSnapshot snapshot){
          // print(request.);
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'No Games Found',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                ],
              );
            } else{
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Color.fromARGB(255,0,145,255),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column 1
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(snapshot.data![index].fields.name, 
                                  style: const TextStyle(fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                                  Text('Amount: ${snapshot.data![index].fields.amount}', style: const TextStyle(fontSize: 18)),
                                  Text('Description: ${snapshot.data![index].fields.description}', style: const TextStyle(fontSize: 18)),
                                ],
                              ),
                            ),
                            // Column 2
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                                    ),
                                    child: Text('Edit', style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      // Navigate to the edit page or perform the edit operation
                                    },
                                  ),
                                  SizedBox(width: 10),
                                   // Add some space between the buttons
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                    ),
                                    child: Text('Delete', style: TextStyle(color: Colors.white)),
                                    onPressed: () {
                                      // Perform the delete operation
                                    },
                                  ),
                                  SizedBox(width: 10), // Add some space between the buttons
                                  ElevatedButton(
                                    child: Text('View Details'),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ProductDetailPage(product: snapshot.data![index]),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );

            }
          }
        })
    );
  }
}
      // body: ListView.builder(
      //   itemCount: Item.defaultItems.length,
      //   itemBuilder: (context, index) {
      //     final item = Item.defaultItems[index];
      //     return Card(
      //       child: Container(
      //         padding: const EdgeInsets.all(10),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(item.name, style: const TextStyle(fontSize: 24)),
      //             Text('Amount: ${item.amount}', style: const TextStyle(fontSize: 18)),
      //             Text('Price: \$${item.price}', style: const TextStyle(fontSize: 18)),
      //             Text('Category: ${item.category}', style: const TextStyle(fontSize: 18)),
      //             Text('Publisher: ${item.publisher}', style: const TextStyle(fontSize: 18)),
      //             Text('Description: ${item.description}', style: const TextStyle(fontSize: 18)),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),



// class ListInventory extends StatelessWidget {

//   const ListInventory({Key? key}) : super(key: key);



// dump code (might want to use later)
//   Expanded(
//     child: GridView.count(
//       primary: true,
//       padding: const EdgeInsets.only(left: 0, top:0, bottom: 0, right: 0),
//       crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       crossAxisCount: 10,
//       shrinkWrap: true,
//       children: Item.defaultItems.map((Item item) {
//         return SizedBox(
//           height: 500, // set the height to 200
//           width: 500, // set the width to 150
//           child: Card(
//             // Replace this with your custom card
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(item.name),
//                 Text('Amount: ${item.amount}'),
//                 Text('Price: \$${item.price}'),
//                 Text('Category: ${item.category}'),
//                 Text('Publisher: ${item.publisher}'),
//                 Text('Description: ${item.description}'),
//               ],
//             ),
//           ),
//         );
//       }).toList(),
//     ),
//   )
// ]