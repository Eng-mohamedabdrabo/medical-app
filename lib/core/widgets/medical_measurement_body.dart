import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../../features/manager/presentation/manager/show_medical_measurement_cubit/show_medical_measure_ment_cubit.dart';
import '../../features/manager/presentation/views/widgets/manager_show_medical_measurement_list_view.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';
import 'custom_data_info_header.dart';

class MedicalMeasurementBody extends StatelessWidget {
  const MedicalMeasurementBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 175,
          child: SvgPicture.asset(
            AppAssets.containerSolidDecoration, width: 2,
          ),
        ),
        const SizedBox(width: 10),
        BlocBuilder<ShowMedicalMeasurementCubit, ShowMedicalMeasurementState>(
          builder: (context, state) {
            if(state is ShowMedicalMeasurementSuccessState){
              return Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomDataInfoHeader(),
                    const SizedBox(height: 8),
                    Text(
                      state.medicalMeasurementModel.note,
                      style: AppStyles.textStyleRegular12(context)
                          .copyWith(color: ColorManager.black),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Medical Measurement',
                      style:
                      AppStyles.textStyleSemiBold14(context).copyWith(
                        color: ColorManager.black,
                      ),
                    ),
                    const SizedBox(height: 8,),
                     ManagerShowMedicalMeasurementListView(measurementModel:state.medicalMeasurementModel ,)
                  ],
                ),
              );
            }
            else if(state is ShowMedicalMeasurementFailureState){
              return const Text('Failed to Show Measurement');
            }
            else{
              return  Center(
                child: LottieBuilder.asset(AppAssets.loading , height: 60,width: 60,),
              );
            }
          },
        ),
      ],
    );
  }
}
