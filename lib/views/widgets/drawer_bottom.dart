import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/active_and_in_active_item.dart';

import '../../models/drawer_item_model.dart';
import '../../utils/app_images.dart';

class DrawerBottom extends StatelessWidget {
  const DrawerBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: 'Setting system',
              image: Assets.imagesSettings,
            ),
          ),
          InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
              title: 'Logout account',
              image: Assets.imagesLogout,
            ),
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
