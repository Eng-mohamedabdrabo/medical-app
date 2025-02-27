import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/color_manager.dart';
import 'widgets/fingerprint_body.dart';

import '../utils/app_router.dart';

class FingerprintView extends StatefulWidget {
  const FingerprintView({super.key});

  @override
  State<FingerprintView> createState() => _FingerprintViewState();
}

class _FingerprintViewState extends State<FingerprintView> {
  @override
  void initState() {
    navigateToHomeView();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.teal,
      body: FingerprintBody(),
    );
  }
  void navigateToHomeView() {
    Future.delayed(
        const Duration(milliseconds: 4500), () {
      if (mounted) {
        GoRouter.of(context).push(AppRouter.kCheckAttendanceDoneView);
      }
    });
  }
}




