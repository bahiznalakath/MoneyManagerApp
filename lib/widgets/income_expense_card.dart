import 'package:flutter/material.dart';

class IncomeExpenseCard extends StatelessWidget {
  const IncomeExpenseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
        children: [
          Card(
            child: Column(
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
