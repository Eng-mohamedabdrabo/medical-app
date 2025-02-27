import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/medical_measurement_body.dart';
import '../../../../core/widgets/medical_record_body.dart';
import 'widgets/case_details_request_choice.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/case_details_body.dart';
import 'widgets/doctor_case_details_action_body.dart';
import '../../../../core/widgets/custom_header.dart';
import '../../../doctor/presentation/views/widgets/doctor_case_details_analysis_list_view.dart';

class DoctorCaseDetailsView extends StatefulWidget {
  const DoctorCaseDetailsView({super.key});

  @override
  State<DoctorCaseDetailsView> createState() => _DoctorCaseDetailsViewState();
}

class _DoctorCaseDetailsViewState extends State<DoctorCaseDetailsView> with SingleTickerProviderStateMixin {
  int selectedIndex = 0;

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  final Duration slideDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: slideDuration,
      vsync: this,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Trigger the animation immediately after view is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        int temporaryIndex = selectedIndex;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 45),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() => temporaryIndex = 0);
                          },
                          child: FadeToggleSelection(
                            isSelected: temporaryIndex == 0,
                            child: CaseDetailsRequestChoice(
                              text: 'Medical Record',
                              image: AppAssets.imagesMedicalRecord,
                              isSelected: temporaryIndex == 0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() => temporaryIndex = 1);
                          },
                          child: FadeToggleSelection(
                            isSelected: temporaryIndex == 1,
                            child: CaseDetailsRequestChoice(
                              text: 'Medical Measurement',
                              image: AppAssets.imagesMedicalMeasurement,
                              isSelected: temporaryIndex == 1,
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
                      if (temporaryIndex == 0) {
                        GoRouter.of(context)
                            .push(AppRouter.kDoctorRequestMedicalReportView);
                      } else {
                        GoRouter.of(context).push(
                            AppRouter.kDoctorRequestMedicalMeasurementView);
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

  Widget _buildSelectedContent() {
    switch (selectedIndex) {
      case 0:
        return DoctorCaseDetailsActionsBody(
          selectedContent: const CaseDetailsBody(),
          onRequestPressed: () => _showBottomSheet(context),
          onEndCasePressed: () {},
          onAddNursePressed: () {
            GoRouter.of(context).push(AppRouter.kDoctorSelectNurseView);
          },
        );
      case 1:
        return const MedicalMeasurementBody();
      case 2:
        return const MedicalRecordBody();
      default:
        return DoctorCaseDetailsActionsBody(
          selectedContent: const CaseDetailsBody(),
          onRequestPressed: () => _showBottomSheet(context),
          onEndCasePressed: () {},
          onAddNursePressed: () {
            GoRouter.of(context).push(AppRouter.kDoctorSelectNurseView);
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomHeader(
                  title: 'Case Details',
                  textStyle: AppStyles.textStyleRegular18(context)
                      .copyWith(color: ColorManager.black),
                  color: ColorManager.black,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 24),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DoctorCaseDetailsAnalysisListView(
                  selectedIndex: selectedIndex,
                  onItemSelected: (index) {
                    setState(() {
                      selectedIndex = index;
                      _animationController.reset();
                      _animationController.forward();
                    });
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 28),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: SlideTransition(
                        position: _slideAnimation,
                        child: _buildSelectedContent(),
                      ),
                    ),
                    const Expanded(child: SizedBox(height: 16)),
                    CustomElevatedButton(
                      text: 'End Case',
                      backGroundColor: ColorManager.brightRed,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 8,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FadeToggleSelection extends StatelessWidget {
  final bool isSelected;
  final Widget child;

  const FadeToggleSelection({
    super.key,
    required this.isSelected,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: isSelected ? 1.0 : 0.5,
      child: child,
    );
  }
}
