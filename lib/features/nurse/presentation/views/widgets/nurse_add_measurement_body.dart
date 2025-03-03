import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_data_info_header.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../analysis_employee/data/models/create_measurement_model.dart';
import '../../../../analysis_employee/presentation/manager/cubits/create_measurement_cubit/create_measurement_cubit.dart';
import 'measurement_requirements_list_view.dart';
import 'nurse_add_measurement_text_field.dart';
import 'nurse_measurement_result_row.dart';

class NurseAddMeasurementBody extends StatefulWidget {
  final int callId;

  const NurseAddMeasurementBody({super.key, required this.callId});

  @override
  State<NurseAddMeasurementBody> createState() => _NurseAddMeasurementBodyState();
}

class _NurseAddMeasurementBodyState extends State<NurseAddMeasurementBody> {
  final TextEditingController bloodPressureController = TextEditingController();
  final TextEditingController sugarAnalysisController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  @override
  void dispose() {
    bloodPressureController.dispose();
    sugarAnalysisController.dispose();
    noteController.dispose();
    super.dispose();
  }

  void sendMeasurement() {
    final measurementRequest = CreateMeasurementRequestModel(
      callId: widget.callId,
      bloodPressure: bloodPressureController.text,
      sugarAnalysis: sugarAnalysisController.text,
      note: noteController.text,
      status: "pending", // قيمة ثابتة
    );

    context.read<CreateMeasurementCubit>().sendMeasurement(measurementRequest);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomHeader(
                  title: 'Add Measurement',
                  textStyle: AppStyles.textStyleRegular18(context)
                      .copyWith(color: ColorManager.black),
                  color: ColorManager.black,
                ),
                const SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      child: SvgPicture.asset(
                        AppAssets.containerSolidDecoration,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomDataInfoHeader(),
                          const SizedBox(height: 8),
                          Text(
                            'Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.',
                            style: AppStyles.textStyleRegular12(context)
                                .copyWith(color: ColorManager.black),
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(
                            height: 40,
                            child: MeasurementRequirementsListView(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  'Add Measurement',
                  style: AppStyles.textStyleRegular14(context).copyWith(
                    color: ColorManager.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                NurseMeasurementResultRow(
                  requirement: 'Blood Pressure',
                  onChanged: (value) {
                    bloodPressureController.text = value;
                  },
                ),
                const SizedBox(height: 16),
                NurseMeasurementResultRow(
                  requirement: 'Sugar Analysis',
                  onChanged: (value) {
                    sugarAnalysisController.text = value;
                  },
                ),
                const SizedBox(height: 16),
                NurseAddMeasurementTextField(
                  onChanged: (value){
                    noteController.text=value;
                  },
                  label: 'Add Note',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 8,
                  ),
                  controller: noteController,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocConsumer<CreateMeasurementCubit, CreateMeasurementState>(
                  listener: (context, state) {
                    if (state is CreateMeasurementSuccessState) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.message)),
                      );
                    } else if (state is CreateMeasurementFailureState) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.errMessage)),
                      );
                    }
                  },
                  builder: (context, state) {
                    return CustomElevatedButton(
                      text: state is CreateMeasurementLoadingState
                          ? 'Loading...'
                          : 'Add Measurement',
                      onPressed:
                      state is CreateMeasurementLoadingState ? (){} : sendMeasurement,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
