import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../features/login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';
import '../utils/assets.dart';
import 'widgets/my_profile_background.dart';
import 'widgets/my_profile_body.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();

    if (authCubit.userId != null) {
      authCubit.showProfile(userId: authCubit.userId!);
    }

    return Scaffold(
      body: MyProfileBackground(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is ProfileLoading) {
              return  Center(child: Center(child: LottieBuilder.asset(AppAssets.animationCircularLoading),));
            } else if (state is ProfileSuccess) {
              return MyProfileBody(profileModel: state.profileModel);
            } else if (state is ProfileFailure) {
              print('Error: ${state.errorMessage}');
              return Center(child: Text("Error: ${state.errorMessage}"));
            }
            return const Center(child: Text("No Data Available"));
          },
        ),
      ),
    );
  }
}
