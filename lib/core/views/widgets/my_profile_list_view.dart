import 'package:flutter/material.dart';
import 'package:medical_app/core/models/my_profile_model.dart';

import '../../utils/assets.dart';
import 'my_profile_list_view_item.dart';

class MyProfileListView extends StatelessWidget {
  const MyProfileListView({
    super.key,
  });
 static const List<MyProfileModel> items = [
   MyProfileModel(icon: AppAssets.containerMidAidKit, text: 'Specialist - Doctor'),
   MyProfileModel(icon: AppAssets.containerGender, text: 'Male'),
   MyProfileModel(icon: AppAssets.containerCalender, text: '29-03-1997'),
   MyProfileModel(icon: AppAssets.containerLocation, text: 'KafrElsheikh ,KafrElsheikh '),
   MyProfileModel(icon: AppAssets.containerHeart, text: 'Single'),
   MyProfileModel(icon: AppAssets.containerMessage, text: 'mhmdabdrabo2019@gmail.com'),
   MyProfileModel(icon: AppAssets.containerCall, text: '01010101010'),
 ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(height:450 , child: ListView.builder(itemCount:items.length ,itemBuilder: (context , index)=> Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: MyProfileListViewItem(myProfileModel: items[index],),
    ),));
  }
}

