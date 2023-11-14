import 'package:flutter/material.dart';
// import 'package:inventory/screens/menu.dart';
import 'package:inventory/widgets/items.dart';
import 'package:inventory/widgets/left_drawer.dart';

class ListInventory extends StatelessWidget {

  const ListInventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory List'),
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: Item.defaultItems.length,
        itemBuilder: (context, index) {
          final item = Item.defaultItems[index];
          return Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: const TextStyle(fontSize: 24)),
                  Text('Amount: ${item.amount}', style: const TextStyle(fontSize: 18)),
                  Text('Price: \$${item.price}', style: const TextStyle(fontSize: 18)),
                  Text('Category: ${item.category}', style: const TextStyle(fontSize: 18)),
                  Text('Publisher: ${item.publisher}', style: const TextStyle(fontSize: 18)),
                  Text('Description: ${item.description}', style: const TextStyle(fontSize: 18)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


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