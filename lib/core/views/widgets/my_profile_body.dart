import 'package:flutter/material.dart';
import '../../../features/login_and_signup/data/models/profile_model.dart';
import '../../widgets/custom_header.dart';
import 'my_profile_data.dart';

class MyProfileBody extends StatelessWidget {
  final ProfileModel profileModel;

  const MyProfileBody({super.key, required this.profileModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomHeader(title: 'My Profile'),
                    ),
                    const SizedBox(height: 60),
                    MyProfileData(profileModel: profileModel),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

