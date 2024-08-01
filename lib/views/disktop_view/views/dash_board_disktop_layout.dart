import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_quick_inoice_section.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history_section.dart';

class DashBoardDisktopLayout extends StatelessWidget {
  const DashBoardDisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesQuickInoiceSection(),
          )),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
