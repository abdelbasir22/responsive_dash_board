import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/latese_transction_list_view.dart';

class LateseTransction extends StatelessWidget {
  const LateseTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latese Transction',
          style: AppStyle.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        LateseTransctionListView(),
      ],
    );
  }
}
