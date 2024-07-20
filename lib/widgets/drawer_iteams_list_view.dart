import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';

class DrawerIteamsListView extends StatefulWidget {
  const DrawerIteamsListView({
    super.key,
  });

  @override
  State<DrawerIteamsListView> createState() => _DrawerIteamsListViewState();
}

class _DrawerIteamsListViewState extends State<DrawerIteamsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyInvestments,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
