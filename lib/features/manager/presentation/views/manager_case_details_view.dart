import 'package:flutter/material.dart';
import '../../../../core/widgets/medical_measurement_body.dart';
import '../../../../core/widgets/medical_record_body.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/case_details_body.dart';
import '../../../../core/widgets/custom_header.dart';
import '../../../doctor/presentation/views/widgets/doctor_case_details_analysis_list_view.dart';

class ManagerCaseDetailsView extends StatefulWidget {
  const ManagerCaseDetailsView({super.key});

  @override
  State<ManagerCaseDetailsView> createState() => _ManagerCaseDetailsViewState();
}

class _ManagerCaseDetailsViewState extends State<ManagerCaseDetailsView>
    with SingleTickerProviderStateMixin {
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
      begin: const Offset(.5, 0.0), // Start off-screen to the right
      end: Offset.zero,
    ).animate(CurvedAnimation(
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
              DoctorCaseDetailsAnalysisListView(
                selectedIndex: selectedIndex,
                onItemSelected: _onItemSelected,
              ),
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
            ],
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
      case 2:
        return const MedicalRecordBody();
      default:
        return const CaseDetailsBody();
    }
  }
}
