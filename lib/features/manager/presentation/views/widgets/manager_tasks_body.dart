import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/core/views/widgets/tasks_list_view.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_add_button.dart';
import '../../../../../core/widgets/custom_calendar_sheet.dart';
import '../../../../../core/widgets/custom_date_picker_row.dart';
import '../../../../../core/widgets/custom_header.dart';

class ManagerTasksBody extends StatefulWidget {
  const ManagerTasksBody({super.key});

  @override
  State<ManagerTasksBody> createState() => _ManagerTasksBodyState();
}

class _ManagerTasksBodyState extends State<ManagerTasksBody> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Tasks',
          textStyle: AppStyles.textStyleMedium16(context)
              .copyWith(color: ColorManager.black),
          color: ColorManager.black,
        ),
        SizedBox(
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
            SizedBox(
              width: 12,
            ),
            CustomAddButton(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kManagerAddTaskView);
              },
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(child: TasksListView(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kManagerTasksDetailsView);
          },
        ))
      ],
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
