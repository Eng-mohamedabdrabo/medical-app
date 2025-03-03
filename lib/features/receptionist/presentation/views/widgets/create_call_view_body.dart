import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_select_someone_container.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../data/models/create_call_model.dart';
import '../../manager/show_all_calls_cubit/show_all_calls_cubit.dart';
import '../select_doctor_view.dart';



class CreateCallViewBody extends StatefulWidget {
  const CreateCallViewBody({super.key});

  @override
  State<CreateCallViewBody> createState() => _CreateCallViewBodyState();
}

class _CreateCallViewBodyState extends State<CreateCallViewBody> {
  TextEditingController patientNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController caseDescriptionController = TextEditingController();
  String? selectedDoctor;
  int? selectedDoctorId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxHeight < 600
                ? SingleChildScrollView(child: _buildContent(context))
                : CustomScrollView(slivers: [
              SliverToBoxAdapter(child: _buildContent(context)),
            ]);
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Create Call',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        const SizedBox(height: 25),

        CustomTextFormField(controller: patientNameController, hintText: 'Patient Name'),
        const SizedBox(height: 20),
        CustomTextFormField(controller: ageController, hintText: 'Age'),
        const SizedBox(height: 20),
        CustomTextFormField(controller: phoneNumberController, hintText: 'Phone Number'),
        const SizedBox(height: 20),

        InkWell(
          onTap: () async {
            final selected = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SelectDoctorView()),
            );

            if (selected != null && mounted) {
              setState(() {
                selectedDoctor = selected.firstName;
                selectedDoctorId = selected.id;
              });
            }
          },
          child: CustomSelectSomeOneContainer(
            empName: selectedDoctor ?? 'Select Doctor',
          ),
        ),

        const SizedBox(height: 20),
        CustomTextFormField(
          controller: caseDescriptionController,
          hintText: 'Case Description',
          contentPadding: const EdgeInsets.only(bottom: 80, left: 12, top: 12),
        ),
        const SizedBox(height: 20),

        CustomElevatedButton(
          text: 'Send Call',
          onPressed: () async {
            await sendCallRequest();
          },
        ),
      ],
    );
  }

  Future<void> sendCallRequest() async {
    if (patientNameController.text.isEmpty ||
        ageController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        caseDescriptionController.text.isEmpty ||
        selectedDoctorId == null) {
      showErrorDialog("All fields are required!");
      return;
    }

    try {
      await Future.delayed(const Duration(seconds: 2));

      final response = CreateCallResponseModel(status: 1, message: "Call request sent successfully!");

      showSuccessDialog(response.message);
    } catch (e) {
      showErrorDialog("Failed to send call request!");
    }
  }

  void showSuccessDialog(String message) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.scale,
      title: 'Success',
      desc: message,
      btnOkOnPress: ()async {
        final navigator = Navigator.of(context);
        await context.read<ShowAllCallsCubit>().getAllCalls();
        navigator.pop();

      },
    ).show();
  }

  void showErrorDialog(String message) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.scale,
      title: 'Error',
      desc: message,
      btnOkOnPress: () {},
    ).show();
  }
}
