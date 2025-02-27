import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_employee_filtering_list_view.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_search_bar.dart';
import '../../manager/all_users_cubit/all_users_cubit.dart';

class HrEmployeeUpperSection extends StatelessWidget {
  const HrEmployeeUpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Employee',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomSearchBar(
          hintText: 'Search for Employee',
          onChanged: (value) {
            context.read<AllUsersCubit>().searchEmployee(value);
          },
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 30,
          child: CustomEmployeeFilteringListView(),
        ),
      ],
    );
  }
}
