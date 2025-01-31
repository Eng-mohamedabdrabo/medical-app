import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/case_details_model.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';
import 'custom_case_details_item.dart';

class CustomCaseDetails extends StatefulWidget {
  const CustomCaseDetails({super.key});

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
          'Ebrahim Khaled',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Age',
        data: Text(
          '24 Years',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Phone Number',
        data: Text(
          '254110241423',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Date',
        data: Text(
          '24 . 04 . 2021',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
      CaseDetailsModel(
        title: 'Doctor',
        data: Text(
          'Salma Ahmed',
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
            SizedBox(
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
