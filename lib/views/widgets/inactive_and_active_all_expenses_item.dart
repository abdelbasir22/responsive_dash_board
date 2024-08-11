import 'package:flutter/material.dart';

import '../../models/all_expenses_item_model.dart';
import '../../utils/app_style.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyle.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyle.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyle.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff4DB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            imageBackground: Colors.white.withOpacity(.100000),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style:
                AppStyle.styleMedium16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyle.styleRegular14(context)
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style:
                AppStyle.styleSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
