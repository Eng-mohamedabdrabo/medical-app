import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../hr/presentation/manager/all_users_cubit/all_users_cubit.dart';
import 'select_doctor_list_view.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_search_bar.dart';

class SelectDoctorBody extends StatefulWidget {
  const SelectDoctorBody({super.key});

  @override
  State<SelectDoctorBody> createState() => _SelectDoctorBodyState();
}

class _SelectDoctorBodyState extends State<SelectDoctorBody> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    context.read<AllUsersCubit>().getDoctorsOnly();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allUsersCubit = context.read<AllUsersCubit>();

    return Column(
      children: [
        CustomHeader(
          title: 'Calls',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        const SizedBox(height: 24),

        CustomSearchBar(
          hintText: 'Search for doctors',
          controller: searchController,
          onChanged: (query) {
            if (query.isEmpty) {
              allUsersCubit.getDoctorsOnly();
            } else {
              allUsersCubit.searchDoctor(query);
            }
          },
        ),

        const SizedBox(height: 30),
        const Expanded(child: SelectDoctorListView()),
        const SizedBox(height: 16),

        CustomElevatedButton(
          text: 'Select Doctor',
          onPressed: allUsersCubit.selectedDoctor == null
              ? (){}
              : () async{
            Navigator.pop(context, allUsersCubit.selectedDoctor);
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
