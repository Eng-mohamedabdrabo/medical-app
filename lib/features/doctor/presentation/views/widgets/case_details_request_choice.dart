import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class CaseDetailsRequestChoice extends StatelessWidget {
  const CaseDetailsRequestChoice({
    super.key,
    required this.text,
    required this.image,
    required this.isSelected,
  });

  final String text, image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(2.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelected ? ColorManager.teal : ColorManager.gray.withAlpha(80),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              isSelected ? ColorManager.teal : ColorManager.gray,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: AppStyles.textStyleRegular10(context).copyWith(
              color: isSelected ? ColorManager.teal : ColorManager.gray,
            ),
          ),
        ],
      ),
    );
  }
}