import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_app/features/receptionist/presentation/views/widgets/calls_list_view.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_add_button.dart';
import '../../../../core/widgets/custom_calendar_sheet.dart';
import '../../../../core/widgets/custom_date_picker_row.dart';
import '../../../../core/widgets/custom_header.dart';

class CallsView extends StatefulWidget {
  const CallsView({super.key});

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
 DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomHeader(
                title: 'Calls',
                textStyle: AppStyles.textStyleRegular18(context).copyWith(
                  color: ColorManager.black,
                ),
                color: ColorManager.black,
              ),
              SizedBox(height: 24,),
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
                  CustomAddButton(onTap: () {  },),
                ],
              ),
              SizedBox(height: 30,),
              Expanded(child: CallsListView())
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

