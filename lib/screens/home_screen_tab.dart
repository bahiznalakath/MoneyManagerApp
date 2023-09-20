import 'package:flutter/material.dart';

import '../widgets/income_expense_card.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 26,
        ),
        Row(
          children: [
            Expanded(child: IncomeExpenseCard()), // Corrected widget name
            Expanded(child: IncomeExpenseCard()), // Corrected widget name
          ],
        )
      ],
    );
  }
}
