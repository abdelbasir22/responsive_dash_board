import 'package:flutter/material.dart';

import '../../utils/app_style.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
        border: Border.all(
          width: 1,
          color: const Color(0xffF1F1F1),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: AppStyle.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064060),
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
