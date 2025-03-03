import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../data/models/all_users_model.dart';

class HrEmployeeListViewItem extends StatelessWidget {
  const HrEmployeeListViewItem({super.key, required this.usersModel});
  final AllUsersModel usersModel;

  String getUserAvatar() {
    switch (usersModel.type.toLowerCase()) {
      case 'doctor':
        return 'assets/images/doctor.svg';
      case 'hr':
        return 'assets/images/hr.svg';
      case 'receptionist':
        return 'assets/images/receptionist.svg';
      case 'analysis':
        return 'assets/images/analysis.svg';
      case 'manger':
        return 'assets/images/manager.svg';
      case 'nurse':
        return 'assets/images/nurse.svg';
      default:
        return 'assets/images/default.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  blurRadius: 8,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: usersModel.avatar,
              fit: BoxFit.cover,
              width: 45,
              height: 45,
              errorWidget: (context, url, error) {
                return SvgPicture.asset(
                  getUserAvatar(),
                  fit: BoxFit.cover,
                  width: 45,
                  height: 45,
                );
              },
              placeholder: (context, url) {
                return LottieBuilder.asset(
                  AppAssets.animationCircularLoading,
                  fit: BoxFit.cover,
                  width: 45,
                  height: 45,
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppAssets.imagesActive),
            ),
          ),
        ],
      ),
      title: Text(
        usersModel.firstName,
        style: AppStyles.textStyleRegular14(context)
            .copyWith(color: ColorManager.black),
      ),
      subtitle: Text(
        'Specialist - ${usersModel.type}',
        style: AppStyles.textStyleRegular12(context),
      ),
    );
  }
}
