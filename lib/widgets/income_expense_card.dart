import 'package:flutter/material.dart';

import '../constants.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultSpacing),
      padding: EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("income"),
                Text("2000"),
              ],
            ),
          ),
          Icon(Icons.arrow_upward),
        ],
      ),
    );
  }
}
