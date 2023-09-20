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
                Expanded(child: IncomeExpenseCard(expenseData: ExpenseData("Income","2000",Icons.arrow_upward_rounded),)),
                SizedBox(
                  width: defaultSpacing ,
                ),// Corrected widget name
                Expanded(child: IncomeExpenseCard(expenseData: ExpenseData("Expense","9900",Icons.arrow_downward_rounded),)), // Corrected widget name
              ],
            )
          ],
        ),
      ),
    );
  }
}
