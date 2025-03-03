import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../data/models/all_users_model.dart';
import '../../manager/all_users_cubit/all_users_cubit.dart';
import 'hr_employee_list_view_item.dart';

class HrEmployeeListView extends StatelessWidget {
  const HrEmployeeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllUsersCubit, AllUsersState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _buildContent(state, context),
        );
      },
    );
  }

  Widget _buildContent(AllUsersState state, BuildContext context) {
    if (state is AllUsersLoadingState) {
      return Center(
        key: const ValueKey('loading'),
        child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,),
      );
    } else if (state is AllUsersSuccessState) {
      return _buildList(state.allUsers, context);
    }
    else if (state is AllUsersSearchState) {
      return _buildList(state.filteredUsers, context);
    }
    else if (state is AllUsersFilteredState) {
      return _buildList(state.allUsers, context);
    } else if (state is AllUsersFailureState) {
      return Center(
        key: const ValueKey('error'),
        child: Text("Error: ${state.errMessage}"),
      );
    } else {
      return const Center(
        key: ValueKey('no_users'),
        child: Text("No users available"),
      );
    }
  }

  Widget _buildList(List<AllUsersModel> users, BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: ListView.builder(
        key: ValueKey<int>(users.length),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.kHrShowEmployeeProfileView,
                  extra: user.id,
                );
              },
              child: HrEmployeeListViewItem(usersModel: user),
            ),
          );
        },
      ),
    );
  }
}
