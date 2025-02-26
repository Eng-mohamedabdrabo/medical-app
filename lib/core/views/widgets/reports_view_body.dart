import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'reports_list_view.dart';
import '../../utils/app_router.dart';
import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_add_button.dart';
import '../../widgets/custom_calendar_sheet.dart';
import '../../widgets/custom_date_picker_row.dart';
import '../../widgets/custom_header.dart';

class ReportsViewBody extends StatefulWidget {
  const ReportsViewBody({
    super.key,
  });

  @override
  State<ReportsViewBody> createState() => _ReportsViewBodyState();
}

class _ReportsViewBodyState extends State<ReportsViewBody> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomHeader(
            title: 'Reports',
            textStyle: AppStyles.textStyleMedium16(context)
                .copyWith(color: ColorManager.black),
            color: ColorManager.black,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: CustomDatePickerRow(
                    selectedDate: selectedDate,
                    onCalendarTap: () {
                      buildShowModalBottomSheet(context);
                    }),
              ),
              const SizedBox(
                width: 12,
              ),
              CustomAddButton(onTap: () {
                GoRouter.of(context).push(AppRouter.kCreateReportView);

              },),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Expanded(
            child: ReportsListView(),
          ),
        ],
      ),
    );
  }

  Future<void> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CustomCalendarSheet(
          onDateSelected: (date) {
            setState(() {
              selectedDate = date;
            });
          },
        );
      },
    );
  }
}
