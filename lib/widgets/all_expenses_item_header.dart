import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackground,
  });
  final String image;
  final Color? imageColor;
  final Color? imageBackground;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackground ?? const Color(0xffF1F1F1),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7f2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
