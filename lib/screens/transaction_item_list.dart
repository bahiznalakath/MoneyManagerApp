import 'package:flutter/material.dart';

import '../constants.dart';

class TransactionItemList extends StatelessWidget {
  const TransactionItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSpacing / 2),
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black12,offset: Offset.zero,blurRadius: 10,spreadRadius: 4)],
        color: background,
        borderRadius: BorderRadius.all(Radius.circular(defaultRadius / 2)),
      ),
      child: const ListTile(
        leading: Icon(Icons.access_time_filled_sharp),
        title: Text("Shoes"),
        subtitle: Text("Snakes Nike"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("140"), Text("aug 3")],
        ),
      ),
    );
  }
}
