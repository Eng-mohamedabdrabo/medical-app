import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/manager/data/models/show_case_details_model.dart';
import '../models/case_details_model.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';
import 'custom_case_details_item.dart';

class CustomCaseDetails extends StatefulWidget {
  const CustomCaseDetails({super.key, required this.caseDetailsModel});
 final ShowCaseDetailsModel caseDetailsModel;
  @override
  State<CustomCaseDetails> createState() => _CustomCaseDetailsState();
}

class _CustomCaseDetailsState extends State<CustomCaseDetails> {
  @override
  Widget build(BuildContext context) {
    final List<CaseDetailsModel> items = [
      CaseDetailsModel(
        title: 'Patient Name',
        data: Text(
          widget.caseDetailsModel.patientName,
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Age',
        data: Text(
          widget.caseDetailsModel.age,
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Phone Number',
        data: Text(
          widget.caseDetailsModel.phone,
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Date',
        data: Text(
          widget.caseDetailsModel.createdAt,
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Doctor',
        data: Text(
          widget.caseDetailsModel.doctorId,
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Nurse',
        data: Text(
          'Ali islam',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Status',
        data: Row(
          children: [
            Text(
              'Process',
              style: AppStyles.textStyleRegular14(context).copyWith(
                color: ColorManager.black,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            SvgPicture.asset(AppAssets.imagesCaseProcess),
          ],
        ),
      ),
    ];
    return Column(
      children: items
          .map(
            (e) => Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: CustomCaseDetailsItem(caseDetailsModel: e),
        ),
      )
          .toList(),
    );
  }
}
