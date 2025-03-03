import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'widgets/analysis_employee_case_details_analysis_list_view.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/case_details_body.dart';
import '../../../../core/widgets/custom_header.dart';
import '../../../../core/widgets/medical_measurement_body.dart';
import '../../../nurse/presentation/views/widgets/nurse_have_request_notice_container.dart';

class AnalysisEmployeeCasesDetailsView extends StatefulWidget {
  const AnalysisEmployeeCasesDetailsView({super.key});

  @override
  State<AnalysisEmployeeCasesDetailsView> createState() =>
      _AnalysisEmployeeCasesDetailsViewState();
}

class _AnalysisEmployeeCasesDetailsViewState
    extends State<AnalysisEmployeeCasesDetailsView> with TickerProviderStateMixin {
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

    _slideAnimation = Tween<Offset>(begin: const Offset(.5, 0.0), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    Future.delayed(Duration.zero, () {
      _animationController.duration = slideDuration;
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onItemSelected(int index) {
    if (index != selectedIndex) {
      setState(() {
        _animationController.reset();
        selectedIndex = index;
        _animationController.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(  // Wrap the content inside SingleChildScrollView
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                Row(
                  children: [
                    AnalysisEmployeeCaseDetailsAnalysisListView(
                      selectedIndex: selectedIndex,
                      onItemSelected: _onItemSelected,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kNurseAddMeasurementView);
                      },
                      child: SvgPicture.asset(AppAssets.containerAnalysisEmployeeAnalysis),
                    ),
                  ],
                ),
                const SizedBox(height: 28),
                const NurseHaveRequestNoticeContainer(),
                const SizedBox(height: 28),
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: _buildSelectedContent(),
                  ),
                ),
                const SizedBox(height: 20), // Optional space after content
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedContent() {
    switch (selectedIndex) {
      case 0:
        return const CaseDetailsBody();
      case 1:
        return const MedicalMeasurementBody();
      default:
        return const CaseDetailsBody();
    }
  }
}
