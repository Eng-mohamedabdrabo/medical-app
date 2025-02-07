import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/widgets/custom_elevated_button.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/views/widgets/reports_and_tasks_details_message.dart';
import '../../../../../core/views/widgets/task_details_task_name.dart';
import '../../../../../core/views/widgets/tasks_details_to_do_items.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../doctor/presentation/views/widgets/doctor_reply_message_to_manager.dart';

class ManagerTaskDetailsViewBody extends StatelessWidget {
  const ManagerTaskDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CustomHeader(
                title: 'Tasks Details',
                textStyle: AppStyles.textStyleRegular18(context).copyWith(
                  color: ColorManager.black,
                ),
                color: ColorManager.black,
              ),
              SizedBox(height: 35),
              const TaskDetailsTaskName(),
              const SizedBox(height: 30),
              ReportsAndTasksDetailsMessage(
                image: AppAssets.imagesATaskDetailsHospital,
              ),
              const SizedBox(height: 20),
              TasksDetailsToDoItems(),
              const SizedBox(height: 2),
              Row(
                children: [
                  SvgPicture.asset(AppAssets.imagesReply),
                  SizedBox(width: 2),
                  Text(
                    'Reply - Manager',
                    style: AppStyles.textStyleRegular10(context).copyWith(
                      fontWeight: FontWeight.w300,
                      color: ColorManager.gray,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              DoctorReplyMessageToManager(),
              SizedBox(height: 16),
              CustomElevatedButton(text: 'Finish Task', onPressed: () {}),
              SizedBox(height: 8,)
            ],
          ),
        ),
      ],
    );
  }
}
