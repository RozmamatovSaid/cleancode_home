import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => ItemWidget(index: index),
        itemCount: 1000000,
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Item ${index}",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    );
  }
}

// 1-Mashq: Dasturni ortiqcha vidjetlardan tozalang va yanada optimal holatga keltiring
//
// class ListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('List View')),
//         body: ListView(
//             children: [
//         for(var i = 0; i < 1000000; i++)
//         ItemWidget(index: index);
//     ],
//     ),
//     );
//   }
// }
//
// class ItemWidget extends StatelessWidget {
//   final int index;
//
//   const ItemWidget({Key? key, required this.index}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Builder(
//         builder: (context) {
//           return Text('Item $index');
//         },
//       ),
//     );
//   }
// }
//

