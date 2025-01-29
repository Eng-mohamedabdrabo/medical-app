import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/models/my_profile_model.dart';
import 'package:medical_app/core/utils/app_styles.dart';

class MyProfileListViewItem extends StatelessWidget {
  const MyProfileListViewItem({
    super.key,
    required this.myProfileModel,
  });

  final MyProfileModel myProfileModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(myProfileModel.icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.centerStart,
        child: Text(myProfileModel.text , style: AppStyles.textStyleRegular14(context).copyWith(
          fontWeight: FontWeight.w500
        ),),
      ),
    );
  }
}
