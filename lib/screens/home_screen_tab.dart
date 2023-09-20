import 'package:flutter/material.dart';
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
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: defaultSpacing * 4,
            ),
            ListTile(
              leading: ClipRRect(
                  borderRadius:
                      const BorderRadius.all(Radius.circular(defaultRadius)),
                  child: Image.asset(
                    "assets/images/avatar.jpeg",
                  )),
              title: const Text(" Hey ...name of user"),
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
                        ?.copyWith(fontSize: fontSizeHeading),
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  Text(
                    "Total balance",
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: defaultSpacing * 2,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: IncomeExpenseCard(
                  expenseData:
                      ExpenseData("Income", "2000", Icons.arrow_upward_rounded),
                )),
                SizedBox(
                  width: defaultSpacing,
                ),
                // Corrected widget name
                Expanded(
                    child: IncomeExpenseCard(
                  expenseData: ExpenseData(
                      "Expense", "9900", Icons.arrow_downward_rounded),
                )),
                // Corrected widget name
              ],
            )
          ],
        ),
      ),
    );
  }
}
