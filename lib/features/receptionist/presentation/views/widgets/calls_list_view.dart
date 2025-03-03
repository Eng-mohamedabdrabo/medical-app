import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/utils/assets.dart';
import '../../manager/show_all_calls_cubit/show_all_calls_cubit.dart';
import 'calls_list_view_item.dart';

class CallsListView extends StatelessWidget {
  const CallsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowAllCallsCubit, ShowAllCallsState>(
      builder: (context, state) {
        if(state is ShowAllCallsSuccessState){
          return ListView.builder(
            itemCount: state.allCalls.length,
            itemBuilder: (context, index) =>
             Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: CallsListViewItem(allCallsModel: state.allCalls[index],),
            ),
          );
        }
        else if(state is ShowAllCallsFailureState){
          return const Center(
            child: Text('Oops there was an error'),
          );
        }
        else{
          return Center(child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,),);
        }
      },
    );
  }
}
