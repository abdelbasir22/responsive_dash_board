import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensesQuickInoiceSection extends StatelessWidget {
  const AllExpensesQuickInoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
