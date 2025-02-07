import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/reports_and_tasks_details_message.dart';
import 'package:medical_app/core/views/widgets/task_details_task_name.dart';
import 'package:medical_app/core/views/widgets/tasks_details_to_do_items.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_header.dart';
import '../../widgets/custom_text_field.dart';

class TasksDetailsBody extends StatelessWidget {
  const TasksDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHeader(
            title: 'Tasks Details',
            textStyle: AppStyles.textStyleRegular18(context).copyWith(
              color: ColorManager.black,
            ),
            color: ColorManager.black,
          ),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(height: 35),
        ),
        SliverToBoxAdapter(
          child: const TaskDetailsTaskName(),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(height: 30),
        ),
        SliverToBoxAdapter(
          child: ReportsAndTasksDetailsMessage(
            image: AppAssets.imagesATaskDetailsHospital,
          ),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child: TasksDetailsToDoItems(),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child: CustomTextFormField(
            hintText: 'Add Note',
            backgroundColor: ColorManager.gray.withValues(alpha: 0.1),
            contentPadding: const EdgeInsets.only(
              bottom: 80,
              left: 12,
              top: 12,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: const SizedBox(height: 30),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomElevatedButton(
                text: 'Execution',
                onPressed: () {},
              ),
              SizedBox(height: 12,)
            ],
          ),
        ),
      ],
    );
  }
}
