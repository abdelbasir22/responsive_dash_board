import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tablitLayout,
      required this.disktopLayout});

  final WidgetBuilder mobileLayout, tablitLayout, disktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < SizeConfig.desktop) {
          return tablitLayout(context);
        } else {
          return disktopLayout(context);
        }
      },
    );
  }
}
