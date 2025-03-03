import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../features/login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../../features/manager/presentation/manager/show_all_reports_cubit/show_all_reports_cubit.dart';
import '../../../features/manager/presentation/manager/show_report_cubit/show_report_cubit.dart';
import '../../utils/assets.dart';
import 'reports_and_tasks_details_message.dart';
import 'reports_details_custom_text_field.dart';
import 'reports_details_end_button.dart';
import 'reports_details_reply_message.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_header.dart';

class ReportsDetailsBody extends StatelessWidget {
  const ReportsDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: BlocBuilder<ShowReportCubit, ShowReportState>(
        builder: (context, state) {
          if (state is ShowReportSuccess) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomHeader(
                        title: 'Reports Details',
                        textStyle:
                            AppStyles.textStyleMedium16(context).copyWith(
                          color: ColorManager.black,
                        ),
                        color: ColorManager.black,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Flexible(
                            child: ReportsDetailsCustomTextField(
                              label: state.reportDetails.reportName,
                            ),
                          ),
                          ReportsDetailsEndButton(
                            onTap: () async {
                              try {
                                final authCubit = context.read<AuthCubit>();

                                /// التحقق من أن `profileModel` ليس فارغًا
                                if (authCubit.profileModel == null) {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text("Error"),
                                      content: const Text("User data not loaded. Please try again."),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text("OK"),
                                        ),
                                      ],
                                    ),
                                  );
                                  return;
                                }

                                final userType = authCubit.profileModel!.data.type;

                                if (userType == 'manger') {
                                  final navigator = Navigator.of(context);
                                  final reportCubit = context.read<ShowReportCubit>();
                                  final allReportsCubit = context.read<ShowAllReportsCubit>();

                                  await reportCubit.deleteReport(state.reportDetails.reportId);

                                  allReportsCubit.fetchAllReports(date: '');

                                  navigator.pop();
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text("Access Denied"),
                                      content: const Text("Manager only authorized to do that."),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text("OK"),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              } catch (e) {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text("Error"),
                                    content: Text("Failed to delete report: $e"),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text("OK"),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),


                        ],
                      ),
                      const SizedBox(height: 25),
                      ReportsDetailsReplyMessage(
                        note: state.reportDetails.answer,
                        name:
                            '${state.reportDetails.user.firstName} ${state.reportDetails.user.lastName}',
                        date: state.reportDetails.createdAt,
                      ),
                      const SizedBox(height: 13),
                      const ReportsAndTasksDetailsMessage(
                        image: AppAssets.imagesReportsDetailsHospital,
                      ),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Expanded(
                          child: SizedBox(
                        height: 88,
                      )),
                      ReportsDetailsCustomTextField(
                        label: 'type your reply',
                        borderRadius: BorderRadius.circular(12),
                        suffix: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.upload,
                            color: ColorManager.gray.withValues(alpha: 0.7),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomElevatedButton(
                        text: 'Send',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (state is ShowReportFailure) {
            return const Center(child: Text('OOps there was ann error'));
          } else {
            return  Center(
              child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,),
            );
          }
        },
      ),
    );
  }
}
