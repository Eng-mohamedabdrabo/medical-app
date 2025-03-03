import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_upload_imager_container.dart';
import '../../../data/models/create_task_model.dart';
import '../../manager/create_task_cubit/create_task_cubit.dart';
import 'manager_add_task_list_view.dart';
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
    final createTaskCubit = context.read<CreateTaskCubit>();
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
        const SliverToBoxAdapter(
          child: SizedBox(height: 25),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              CustomTextFormField(
                onChanged: createTaskCubit.updateTaskName,
                hintText: 'Task Name',
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  final selectedId = await GoRouter.of(context).push(AppRouter.kSelectDoctorView);
                  if (selectedId != null) {
                    final int? doctorId = int.tryParse(selectedId.toString());
                    if (doctorId != null) {
                      createTaskCubit.updateUserId(doctorId);
                    }
                  }
                },

                child: BlocBuilder<CreateTaskCubit, CreateTaskState>(
                  builder: (context, state) {
                    return CustomSelectSomeOneContainer(
                      empName: (createTaskCubit.userId == 0)
                          ? 'Select Doctor'
                          : 'Doctor ID: ${createTaskCubit.userId}',
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                onChanged: createTaskCubit.updateDesc,
                hintText: 'Case Description',
                contentPadding: const EdgeInsets.symmetric(vertical: 60, horizontal: 12),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('To do'),
                  const Spacer(),
                  InkWell(
                    onTap: () => _showAddBottomSheet(context, createTaskCubit),
                    child: const AddHere(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 100, child: ManagerAddTaskListView()),
              const SizedBox(height: 24),
              const CustomUploadImageContainer(),
              const SizedBox(height: 50),
              BlocConsumer<CreateTaskCubit, CreateTaskState>(
                listener: (context, state) {
                  if (state is CreateTaskSuccessState) {
                    showSuccessDialog(context, state.message);
                  } else if (state is CreateTaskFailureState) {
                    showErrorDialog(context, state.errMessage);
                  }
                },
                builder: (context, state) {
                  if (state is CreateTaskLoadingState) {
                    return  Center(child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,));
                  }
                  return CustomElevatedButton(
                    text: 'Send',
                    onPressed: () {
                      final requestModel = CreateTaskRequestModel(
                        taskName: createTaskCubit.taskName,
                        userId: createTaskCubit.userId,
                        todos: createTaskCubit.todos,
                        description: createTaskCubit.desc,
                        image: createTaskCubit.image, //   أن الصورة مخزنة هنا
                      );
                      createTaskCubit.createCall(requestModel);
                    },
                  );
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }

  void _showAddBottomSheet(BuildContext context, CreateTaskCubit createTaskCubit) {
    TextEditingController todoController = TextEditingController();

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
                controller: todoController,
                hintText: 'To do details',
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 65),
              ),
              const SizedBox(height: 16),
              CustomElevatedButton(
                text: 'Add',
                onPressed: () {
                  if (todoController.text.isNotEmpty) {
                    createTaskCubit.updateTodos(todoController.text);
                  }
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void showErrorDialog(BuildContext context, String errorMessage) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.bottomSlide,
      title: 'Error',
      desc: errorMessage,
      btnOkOnPress: () {},
      btnOkColor: Colors.red,
    ).show();
  }

  void showSuccessDialog(BuildContext context, String message) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.bottomSlide,
      title: 'Success',
      desc: message,
      btnOkOnPress: () {},
      btnOkColor: Colors.green,
    ).show();
  }
}

class AddHere extends StatelessWidget {
  const AddHere({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesAdd),
        const SizedBox(width: 2),
        const Text('Add'),
      ],
    );
  }
}
