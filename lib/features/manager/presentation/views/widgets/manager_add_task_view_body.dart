import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/core/utils/assets.dart';
import 'package:medical_app/core/widgets/custom_elevated_button.dart';
import 'package:medical_app/core/widgets/custom_upload_imager_container.dart';
import 'package:medical_app/features/manager/presentation/views/widgets/manager_add_task_list_view.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_select_someone_container.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class ManagerAddTaskViewBody extends StatelessWidget {
  const ManagerAddTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHeader(
            title: 'Task Details',
            textStyle: AppStyles.textStyleRegular18(context).copyWith(
              color: ColorManager.black,
            ),
            color: ColorManager.black,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 25),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CustomTextFormField(hintText: 'Task Name'),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kSelectDoctorView);
                },
                child: const CustomSelectSomeOneContainer(
                  empName: 'Select Doctor',
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Case Description',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 12),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('To do'),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _showAddBottomSheet(context);
                    },
                    child: const AddHere(),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(height: 100, child: ManagerAddTaskListView()),
              SizedBox(height: 24),
              CustomUploadImageContainer(),
              SizedBox(height: 20),
              SizedBox(height: 50),
              CustomElevatedButton(text: 'Send', onPressed: () {}),
              SizedBox(height: 8,)

            ],
          ),
        ),
      ],
    );
  }

  void _showAddBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextFormField(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12, vertical: 65),
                  hintText: 'To do details'),
              const SizedBox(height: 16),
              CustomElevatedButton(
                text: 'Add',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class AddHere extends StatelessWidget {
  const AddHere({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesAdd),
        SizedBox(width: 2),
        Text('Add'),
      ],
    );
  }
}
