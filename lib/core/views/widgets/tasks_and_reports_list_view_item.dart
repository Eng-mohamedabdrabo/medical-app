import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../features/manager/data/models/show_all_reports_model.dart';
import '../../../features/manager/data/models/show_all_tasks_model.dart';
import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class TasksListViewItem extends StatelessWidget {
  const TasksListViewItem({
    super.key, required this.allTasksModel,
  });
final ShowAllTasksModel allTasksModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCheck),
              const SizedBox(
                width: 12,
              ),
              Text(
                getCuttingText(allTasksModel.taskName, 8),
                maxLines: 1,
                overflow:TextOverflow.ellipsis,
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
              const Expanded(child: SizedBox()),
              SvgPicture.asset(AppAssets.containerTasksFinished),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCalender),

              const SizedBox(
                width: 12,
              ),
              Text(
                allTasksModel.date,
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),

        ],
      ),
    );
  }
}
class ReportsListViewItem extends StatelessWidget {
  const ReportsListViewItem({
    super.key, required this.report,
  });
  final ShowAllReportsModel report;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCheck),
              const SizedBox(
                width: 12,
              ),
              Text(
                getCuttingText(report.reportName, 9),
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
              const Expanded(child: SizedBox()),
              SvgPicture.asset(AppAssets.containerTasksFinished),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCalender),

              const SizedBox(
                width: 12,
              ),
              Text(
                report.date,
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),

        ],
      ),
    );
  }
}

getCuttingText(String text , int wordLimit){
  List<String> words = text.split('');
  if(words.length<=wordLimit){
    return text;
  }
  else{
    return '${words.sublist(0, wordLimit).join(' ')}...';
  }
}