import 'package:flutter/material.dart';

import '../constants.dart';

class ExpenseData {
  final String label;
  final String amount;
  final IconData icon;

  const ExpenseData(this.label, this.amount, this.icon);
}

class IncomeExpenseCard extends StatelessWidget {
  final ExpenseData expenseData;

  const IncomeExpenseCard({Key? key, required this.expenseData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // width: ,
      height: 80,
      // margin: EdgeInsets.only(right: defaultSpacing),
      padding: const EdgeInsets.all(defaultSpacing),
      decoration: BoxDecoration(
          color: expenseData.label == "Income" ? primaryDark : accent,
          borderRadius: BorderRadius.circular(defaultRadius)),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  expenseData.label,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: defaultSpacing/3),
                  child: Text(
                    expenseData.amount,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          Icon(expenseData.icon,color: Colors.white,),
        ],
      ),
    );
  }
}
