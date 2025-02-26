import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/calls_list_view.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_add_button.dart';
import '../../../../core/widgets/custom_calendar_sheet.dart';
import '../../../../core/widgets/custom_date_picker_row.dart';
import '../../../../core/widgets/custom_header.dart';

class ReceptionistCallsView extends StatefulWidget {
  const ReceptionistCallsView({super.key});

  @override
  State<ReceptionistCallsView> createState() => _ReceptionistCallsViewState();
}

class _ReceptionistCallsViewState extends State<ReceptionistCallsView> {
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
                  CustomAddButton(
                    onTap: () {
                      GoRouter.of(context)
                          .push(AppRouter.kReceptionistCreateCallView);
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Expanded(child: CallsListView())
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
            setState(
              () {
                selectedDate = date;
              },
            );
          },
        );
      },
    );
  }
}
