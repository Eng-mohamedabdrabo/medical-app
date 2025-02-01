import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/utils/assets.dart';
import 'package:medical_app/core/widgets/custom_elevated_button.dart';
import 'package:medical_app/features/doctor/presentation/views/doctor_request_medical_measurement_view.dart';
import 'package:medical_app/features/doctor/presentation/views/doctor_request_medical_report_view.dart';
import 'package:medical_app/features/doctor/presentation/views/doctor_select_nurse_view.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/case_details_request_choice.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/doctor_case_details_analysis_list_view.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_case_description.dart';
import '../../../../core/widgets/custom_case_details.dart';
import '../../../../core/widgets/custom_header.dart';

class DoctorCaseDetailsView extends StatelessWidget {
  const DoctorCaseDetailsView({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        int selectedIndex = 0;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 45),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: FadeToggleSelection(
                            isSelected: selectedIndex == 0,
                            child: CaseDetailsRequestChoice(
                              text: 'Medical Record',
                              image: AppAssets.imagesMedicalRecord,
                              isSelected: selectedIndex == 0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: FadeToggleSelection(
                            isSelected: selectedIndex == 1,
                            child: CaseDetailsRequestChoice(
                              text: 'Medical Measurement',
                              image: AppAssets.imagesMedicalMeasurement,
                              isSelected: selectedIndex == 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  CustomElevatedButton(
                    text: 'Request',
                    onPressed: () {
                      if (selectedIndex == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorRequestMedicalReportView(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DoctorRequestMedicalMeasurementView(),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomHeader(
                        title: 'Case Details',
                        textStyle: AppStyles.textStyleRegular18(context)
                            .copyWith(color: ColorManager.black),
                        color: ColorManager.black,
                      ),
                      const SizedBox(height: 24),
                      DoctorCaseDetailsAnalysisListView(),
                      const SizedBox(height: 28),
                      CustomCaseDetails(),
                      const SizedBox(height: 16),
                      CustomCaseDescription(),
                      const SizedBox(height: 45),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DoctorSelectNurseView(),
                                  ),
                                );
                              },
                              child:
                                  SvgPicture.asset(AppAssets.containerAddNurse),
                            ),
                            const SizedBox(width: 20),
                            GestureDetector(
                              onTap: () => _showBottomSheet(context),
                              child:
                                  SvgPicture.asset(AppAssets.containerRequest),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomElevatedButton(
                text: 'End Case',
                backGroundColor: ColorManager.brightRed,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FadeToggleSelection extends StatelessWidget {
  final bool isSelected;
  final Widget child;

  const FadeToggleSelection(
      {super.key, required this.isSelected, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: isSelected ? 1.0 : 0.5,
      child: child,
    );
  }
}
