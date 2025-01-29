import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/my_profile_background.dart';
import 'package:medical_app/core/views/widgets/my_profile_body.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyProfileBackground(
        child: MyProfileBody(),
      ),
    );
  }
}
