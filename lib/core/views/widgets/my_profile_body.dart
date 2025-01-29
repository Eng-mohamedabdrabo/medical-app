import 'package:flutter/material.dart';
import '../../widgets/custom_header.dart';
import 'my_profile_data.dart';

class MyProfileBody extends StatelessWidget {
  const MyProfileBody({
    super.key,
  });

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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomHeader(title: 'My Profile',),
                    ),
                    SizedBox(height: 60),
                    MyProfileData(),
                    Spacer(), // Pushes content upwards if there's extra space
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

