import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../features/manager/presentation/manager/show_all_reports_cubit/show_all_reports_cubit.dart';
import '../../../features/manager/presentation/manager/show_all_tasks_cubit/show_all_tasks_cubit.dart';
import '../../../features/manager/presentation/manager/show_report_cubit/show_report_cubit.dart';
import '../../utils/assets.dart';
import 'tasks_and_reports_list_view_item.dart';
import '../../utils/app_router.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowAllTasksCubit, ShowAllTasksState>(
      builder: (context, state) {
        if (state is ShowAllTasksSuccessState) {
          return ListView.builder(
            itemCount: state.allTasks.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kReportsDetailsView);
                },
                child: TasksListViewItem(
                  allTasksModel: state.allTasks[index],
                ),
              ),
            ),
          );
        }
        else if(state is ShowAllTasksFailureState){
          return const Center(child:  Text('failed to load tasks'));
        }
        else{
          return  Center(child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,));
        }
      },
    );
  }
}


class ReportsListView extends StatelessWidget {
  const ReportsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowAllReportsCubit, ShowAllReportsState>(
      builder: (context, state) {
        if (state is ShowAllReportsSuccess) {
          return ListView.builder(
            itemCount: state.reports.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: InkWell(
                onTap: () {
                  final reportId = state.reports[index].id;
                  context.read<ShowReportCubit>().fetchReportDetails(reportId);
                  GoRouter.of(context).push(AppRouter.kReportsDetailsView);
                },
                child: ReportsListViewItem(
                  report: state.reports[index],
                ),
              ),
            ),
          );
        } else if (state is ShowAllReportsFailure) {
          return const Center(child: Text('Failed to load reports'));
        } else {
          return  Center(child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,));
        }
      },
    );
  }
}

