import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/latese_transction_list_view.dart';

class LateseTransction extends StatelessWidget {
  const LateseTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latese Transction',
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LateseTransctionListView(),
      ],
    );
  }
}
