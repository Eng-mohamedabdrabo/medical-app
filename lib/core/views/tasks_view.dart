import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/tasks_list_view.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';
import '../widgets/custom_calendar_sheet.dart';
import '../widgets/custom_date_picker_row.dart';
import '../widgets/custom_header.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            children: [
            CustomHeader(
            title: 'Tasks',
            textStyle: AppStyles.textStyleRegular18(context).copyWith(
              color: ColorManager.black,
            ),
            color: ColorManager.black,
            ),
              SizedBox(height: 24,),
              CustomDatePickerRow(
                selectedDate: selectedDate,
                onCalendarTap: () {
                  buildShowModalBottomSheet(context);
                },
              ),
              Expanded(child: TasksListView(),)
            ],
          ),
        ),
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
