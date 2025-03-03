import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../receptionist/presentation/manager/show_all_calls_cubit/show_all_calls_cubit.dart';
import 'doctor_cases_list_view_item.dart';

class DoctorCasesListview extends StatelessWidget {
  const DoctorCasesListview({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowAllCallsCubit, ShowAllCallsState>(
      builder: (context, state) {
        if (state is ShowAllCallsSuccessState) {
          print("Fetched Calls: ${state.allCalls.length}");
          if (state.allCalls.isEmpty) {
            return const Center(child: Text('No cases available'));
          }
          else{
            return ListView.builder(
              itemCount: state.allCalls.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: DoctorCasesListViewItem(
                  onTap: onTap,
                  allCallsModel: state.allCalls[index],
                ),
              ),
            );
          }

        }

        else if (state is ShowAllCallsFailureState) {
          return const Center(
            child: Text('failed to load cases'),
          );
        } else {
          return  Center(
            child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,),
          );
        }
      },
    );
  }
}
