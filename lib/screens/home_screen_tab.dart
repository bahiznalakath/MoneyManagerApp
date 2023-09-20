import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:moneymanagerapp/constants.dart';

import '../widgets/income_expense_card.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          children: [
            SizedBox(
              height: defaultSpacing * 4,
            ),
            Row(
              children: [
                Expanded(child: IncomeExpenseCard()), // Corrected widget name
                Expanded(child: IncomeExpenseCard()), // Corrected widget name
              ],
            )
          ],
        ),
      ),
    );
  }
}
