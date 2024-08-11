import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/disktop_view/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/incmoe_details.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';

import '../../utils/size_config.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncmoeDetails(),
              ),
            ],
          );
  }
}
