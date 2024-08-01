import 'package:flutter/widgets.dart';

import '../../utils/app_style.dart';
import 'range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyle.styleSemiBold20,
        ),
        RangeOptions(
          title: 'Monthly',
        ),
      ],
    );
  }
}
