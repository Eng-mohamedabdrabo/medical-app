import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/manager/presentation/manager/create_report_cubit/create_report_cubit.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_upload_imager_container.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_header.dart';

class CreateReportView extends StatefulWidget {
  const CreateReportView({super.key});

  @override
  _CreateReportViewState createState() => _CreateReportViewState();
}

class _CreateReportViewState extends State<CreateReportView> {
  final TextEditingController _reportNameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateReportCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<CreateReportCubit, CreateReportState>(
            listener: (context, state) {
              if (state is CreateReportSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              } else if (state is CreateReportFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              }
            },
            builder: (context, state) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomHeader(
                            title: 'Create Report',
                            textStyle: AppStyles.textStyleMedium16(context)
                                .copyWith(color: ColorManager.black),
                            color: ColorManager.black,
                          ),
                          const SizedBox(height: 24),
                          CustomTextFormField(
                            controller: _reportNameController,
                            hintText: 'Report Name',
                            backgroundColor: ColorManager.gray.withValues(alpha: 0.1),
                          ),
                          const SizedBox(height: 20),
                          CustomTextFormField(
                            controller: _descriptionController,
                            hintText: 'Description',
                            backgroundColor: ColorManager.gray.withValues(alpha: 0.1),
                            contentPadding: const EdgeInsets.only(
                              bottom: 80,
                              left: 12,
                              top: 12,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const CustomUploadImageContainer(),
                        ],
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomElevatedButton(
                            text: 'Create Report',
                            onPressed: () {
                              final cubit = context.read<CreateReportCubit>();
                              cubit.createReport(
                                reportName: _reportNameController.text,
                                description: _descriptionController.text,
                                image: cubit.image!,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
