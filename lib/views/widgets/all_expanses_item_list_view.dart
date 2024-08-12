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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



    // return Row(
    //   // children: items
    //   //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
    //   //     .toList(),
    //   children: items.asMap().entries.map(
    //     (e) {
    //       int index = e.key;
    //       var item = e.value;

    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: Padding(
    //             padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //             child: AllExpensesItem(
    //               itemModel: item,
    //               isActive: selectedIndex == index,
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ).toList(),
    // );



    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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