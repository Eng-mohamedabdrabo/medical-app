import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    this.color,
    this.textStyle, required this.title,
  });
final String title;
  final Color? color;

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: color ?? ColorManager.white,
            )),
        Spacer(),
        Center(
          child: Text(
            title,
            style: textStyle ?? AppStyles.textStyleRegular18(context),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
