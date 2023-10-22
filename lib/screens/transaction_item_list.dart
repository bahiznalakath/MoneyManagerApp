import 'package:flutter/material.dart';

import '../constants.dart';

class TransactionItemList extends StatelessWidget {
  const TransactionItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSpacing / 2),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 15,
              spreadRadius: 6)
        ],
        color: background,
        borderRadius: BorderRadius.all(Radius.circular(defaultRadius / 2)),
      ),
      child: ListTile(
        leading: const Icon(Icons.access_time_filled_sharp),
        title: const Text("Shoes"),
        subtitle: Text(
          "Snakes Nike",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.black,
                fontSize: fontSizeTitle,
              ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "140",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Colors.black,
            fontSize: fontSizeTitle,)
          ),
            Text(
              "aug 3",
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
