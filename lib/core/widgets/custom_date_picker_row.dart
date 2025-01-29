import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/assets.dart';
import 'package:medical_app/core/utils/color_manager.dart';

class CustomDatePickerRow extends StatelessWidget {
  final DateTime? selectedDate;
  final VoidCallback onCalendarTap;

  const CustomDatePickerRow({
    super.key,
    required this.selectedDate,
    required this.onCalendarTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.horizontal(left: Radius.circular(8),),
                side: BorderSide(width: 1, color: ColorManager.gray),
              ),
            ),
            child: Text(
              selectedDate != null
                  ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                  : 'Select a date',
              style: AppStyles.textStyleRegular12(context).copyWith(
                color: ColorManager.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onCalendarTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: ColorManager.darkGray.withValues(alpha: 0.9),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(8)),
              ),
            ),
            child: SvgPicture.asset(
              AppAssets.imagesCalender,
              colorFilter: ColorFilter.mode(
                ColorManager.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
