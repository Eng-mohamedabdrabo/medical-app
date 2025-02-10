import 'package:flutter/material.dart';

import '../../../../../core/views/widgets/my_profile_data.dart';
import '../../../../../core/widgets/custom_header.dart';

class HrShowEmployeeProfileViewBody extends StatelessWidget {
  const HrShowEmployeeProfileViewBody({super.key});

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
                    MyProfileData(isEdit: true,),
                    Expanded(child: SizedBox(height: 30,)),

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
