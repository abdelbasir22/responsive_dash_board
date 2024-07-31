import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tablitLayout,
      required this.disktopLayout});

  final WidgetBuilder mobileLayout, tablitLayout, disktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 600) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1300) {
        return tablitLayout(context);
      } else {
        return disktopLayout(context);
      }
    });
  }
}
