import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/widgets/medical_measurement_body.dart';
import 'widgets/nurse_case_details_analysis_list_view.dart';
import 'widgets/nurse_have_request_notice_container.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_case_details.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_header.dart';

class NurseCaseDetailsView extends StatefulWidget {
  const NurseCaseDetailsView({super.key});

  @override
  State<NurseCaseDetailsView> createState() => _NurseCaseDetailsViewState();
}

class _NurseCaseDetailsViewState extends State<NurseCaseDetailsView> with TickerProviderStateMixin {
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

  // Handle toggle selection change
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
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
                  NurseCaseDetailsAnalysisListView(
                    selectedIndex: selectedIndex,
                    onItemSelected: _onItemSelected,  // Passing callback to update selectedIndex
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context)
                          .push(AppRouter.kNurseAddMeasurementView);
                    },
                    child: SvgPicture.asset(AppAssets.containerNurseAnalysis),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const NurseHaveRequestNoticeContainer(),
              const SizedBox(height: 28),
              Expanded(
                child: SingleChildScrollView(
                  child: FadeTransition(
                    opacity: _fadeAnimation,
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: _buildSelectedContent(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomElevatedButton(
          text: 'Call Doctor',
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildSelectedContent() {
    switch (selectedIndex) {
      case 0:
        return const CustomCaseDetails(); // Assuming this represents "Medical Measurement"
      case 1:
        return const MedicalMeasurementBody();
      default:
        return const CustomCaseDetails(); // Default case for Medical Measurement
    }
  }
}
