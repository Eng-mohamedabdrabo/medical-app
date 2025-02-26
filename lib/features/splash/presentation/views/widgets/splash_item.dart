import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

class SplashItem extends StatefulWidget {
  const SplashItem({super.key});

  @override
  State<SplashItem> createState() => _SplashItemState();
}

class _SplashItemState extends State<SplashItem> {
  @override
  void initState() {
    navigateToHomeView();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight * 0.29,
          ),
          Lottie.asset(AppAssets.animationLogoWithName),
          const Expanded(child: SizedBox()),
          Column(
            children: [
              SizedBox(
                height: 10,
                child: OverflowBox(
                  minHeight: 300,
                  maxHeight: 300,
                  child: Lottie.asset(AppAssets.animationLoading),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Loading..',
                  style: AppStyles.textStyleLight14(context),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.25),
        ],
      ),
    );
  }
  void navigateToHomeView() {
    Future.delayed(
        const Duration(milliseconds: 4000), () {
      if (mounted) {
        GoRouter.of(context).push(AppRouter.kPrototypingMapView);
      }
    });
  }
}


