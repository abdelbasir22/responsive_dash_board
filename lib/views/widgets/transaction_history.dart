import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/transactin_history_list_view.dart';
import 'package:responsive_dash_board/views/widgets/transaction_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2024',
          style: AppStyle.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactinHistoryListView(),
      ],
    );
  }
}
