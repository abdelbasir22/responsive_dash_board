import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpansesItemListView extends StatefulWidget {
  const AllExpansesItemListView({super.key});

  @override
  State<AllExpansesItemListView> createState() =>
      _AllExpansesItemListViewState();
}

class _AllExpansesItemListViewState extends State<AllExpansesItemListView> {
  final items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Bloance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;

          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(
                    itemModel: item,
                    isActive: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                  itemModel: item,
                  isActive: selectedIndex == index,
                ),
              ),
            );
          }
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}



 //   return ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return AllExpensesItem(
    //         itemModel: items[index],
    //       );
    //     },
    //   );
    // }