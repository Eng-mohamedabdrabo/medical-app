import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/views/widgets/my_profile_data.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';

class HrShowEmployeeProfileViewBody extends StatelessWidget {
  const HrShowEmployeeProfileViewBody({super.key,});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child:  IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomHeader(title: 'My Profile',),
                    ),
                    const SizedBox(height: 60),
                    MyProfileData(isEdit: true, profileModel:context.read<AuthCubit>().profileModel!,),
                    const Expanded(child: SizedBox(height: 30,)),

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
