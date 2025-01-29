import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/reports_and_tasks_details_message.dart';
import 'package:medical_app/core/views/widgets/task_details_task_name.dart';
import 'package:medical_app/core/views/widgets/tasks_details_custom_text_form_field.dart';
import 'package:medical_app/core/views/widgets/tasks_details_to_do_items.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_header.dart';

class TasksDetailsBody extends StatelessWidget {
  const TasksDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(
          title: 'Tasks Details',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        SizedBox(height: 35,),
        const TaskDetailsTaskName(),
        const SizedBox(height: 30),
        ReportsAndTasksDetailsMessage(
          image: AppAssets.imagesATaskDetailsHospital,
        ),
        const SizedBox(height: 20),
        TasksDetailsToDoItems(),
        const SizedBox(height: 20),
        TasksDetailsCustomTextFormField(
          label: 'Add Note',
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 50),
        ),
        const SizedBox(height: 30),
        CustomElevatedButton(
          text: 'Execution',
        ),
      ],
    );
  }
}
