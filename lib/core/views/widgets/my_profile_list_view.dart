import 'package:flutter/material.dart';
import '../../../features/login_and_signup/data/models/profile_model.dart';
import '../../models/my_profile_model.dart';
import '../../utils/assets.dart';
import 'my_profile_list_view_item.dart';

class MyProfileListView extends StatelessWidget {
  final ProfileModel profileModel;

  const MyProfileListView({
    super.key,
    required this.profileModel,
  });

  @override
  Widget build(BuildContext context) {
    List<MyProfileModel> items = [
      MyProfileModel(icon: AppAssets.containerMidAidKit, text: 'Specialist - ${profileModel.data.specialist}'),
      MyProfileModel(icon: AppAssets.containerGender, text: profileModel.data.gender),
      MyProfileModel(icon: AppAssets.containerCalender, text: profileModel.data.birthday),
      MyProfileModel(icon: AppAssets.containerLocation, text: profileModel.data.address),
      MyProfileModel(icon: AppAssets.containerHeart, text: profileModel.data.status),
      MyProfileModel(icon: AppAssets.containerMessage, text: profileModel.data.email),
      MyProfileModel(icon: AppAssets.containerCall, text: profileModel.data.mobile),
    ];

    return SizedBox(
      height: 450,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: MyProfileListViewItem(myProfileModel: items[index]),
        ),
      ),
    );
  }
}
