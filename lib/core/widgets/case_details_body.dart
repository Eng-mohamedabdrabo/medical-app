import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../features/manager/presentation/manager/show_case_details_cubit/show_case_details_cubit.dart';
import '../utils/assets.dart';
import 'custom_case_description.dart';
import 'custom_case_details.dart';

class CaseDetailsBody extends StatelessWidget {
  const CaseDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowCaseDetailsCubit, ShowCaseDetailsState>(
      builder: (context, state) {
        if(state is ShowCaseDetailsSuccessState){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              CustomCaseDetails(caseDetailsModel: state.caseDetailsModel,),
              const SizedBox(height: 16),
               CustomCaseDescription(caseDetailsModel: state.caseDetailsModel,),
              const SizedBox(height: 45),
            ],
          );
        }
        else if(state is ShowCaseDetailsFailureState){
          return Text(state.errMessage);
        }
        else{
          return  Center(child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,),);
        }
      },
    );
  }
}