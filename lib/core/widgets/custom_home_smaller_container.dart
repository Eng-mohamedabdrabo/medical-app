import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomHomeSmallerContainer extends StatelessWidget {
  const CustomHomeSmallerContainer({
    super.key,
    required this.color,
    required this.text,
    required this.image,
    required this.width,
  });

  final String text, image;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: width,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: 10),
          Text(
            text,
            style: AppStyles.textStyleRegular14(context).copyWith(
              color: ColorManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
