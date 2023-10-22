import 'package:flutter/material.dart';
import 'package:moneymanagerapp/constants.dart';
import 'package:moneymanagerapp/screens/transaction_item_list.dart';
import '../widgets/income_expense_card.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(defaultRadius), // Remove extra borderRadius
                child: Image.asset("assets/images/avatar.jpeg"),
              ),
              title: const Text("Hey ...name of user"),
              trailing: Image.asset("assets/icons/bell.png"),
            ),
            const SizedBox(
              height: defaultSpacing,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "45000",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: fontSizeHeading), // Change to headline6
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  Text(
                    "Total balance",
                    style: Theme.of(context).textTheme.bodyMedium, // Change to bodyText2
                  )
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData("Income", "2000", Icons.arrow_upward_rounded),
                  ),
                ),
                SizedBox(
                  width: defaultSpacing,
                ),
                Expanded(
                  child: IncomeExpenseCard(
                    expenseData: ExpenseData("Expense", "9900", Icons.arrow_downward_rounded),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            Text(
              "Recent Transactions",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700), // Change to headline6
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            const Text("Today"),
            // Text("Today", style: TextStyle(color: fontSubHeading),)
            const TransactionItemList(),
          ],
        ),
      ),
    );
  }
}
