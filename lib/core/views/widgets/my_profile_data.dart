import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../features/login_and_signup/data/models/profile_model.dart';
import '../../utils/assets.dart';
import '../../utils/app_router.dart';
import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import 'my_profile_custom_image_frame.dart';
import 'my_profile_list_view.dart';

class MyProfileData extends StatelessWidget {
  final bool isEdit;
  final ProfileModel profileModel;
  const MyProfileData({
    super.key,
    this.isEdit = false, required this.profileModel,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 12, top: 70, bottom: 30),
            decoration: ShapeDecoration(
              color: ColorManager.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              children: [
                Text(
                  'Mohamed Abdrabo',
                  style: AppStyles.textStyleMedium16(context),
                ),
                const SizedBox(height: 30),
                 MyProfileListView(profileModel: profileModel,),
              ],
            ),
          ),
          Positioned(
            top: -187,
            left: (screenWidth / 2) - 401,
            child: CustomPaint(
              size: const Size(200, 200),
              painter: RPSCustomPainter(),
            ),
          ),
          Positioned(
            top: -34,
            left: (screenWidth / 2) - 42,
            child: ClipOval(
              child: SvgPicture.asset(
                AppAssets.imagesPlaceholder,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (isEdit)
            Positioned(
              top: 584,
              left: (screenWidth / 2) - 30,
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kHrEditUserView);
                },
                child: const EditContainer(),
              ),
            ),
        ],
      ),
    );
  }
}

class EditContainer extends StatelessWidget {
  const EditContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: const BoxDecoration(
        color: ColorManager.teal,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            color: ColorManager.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              AppAssets.imagesPencil,
              fit: BoxFit.contain,
              colorFilter:
                  const ColorFilter.mode(ColorManager.black, BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}
