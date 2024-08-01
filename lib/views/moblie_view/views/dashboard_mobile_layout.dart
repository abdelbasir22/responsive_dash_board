import 'package:flutter/material.dart';

import '../../widgets/all_expenses_quick_inoice_section.dart';
import '../../widgets/income_section.dart';
import '../../widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesQuickInoiceSection(),
          SizedBox(
            height: 30,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 30,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
