import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_select_someone_container.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../select_doctor_view.dart';

// Dummy Models
class CreateCallRequestModel {
  final String patientName;
  final int doctorId;
  final int age;
  final String phone;
  final String description;

  CreateCallRequestModel({
    required this.patientName,
    required this.doctorId,
    required this.age,
    required this.phone,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    return {
      'patient_name': patientName,
      'doctor_id': doctorId,
      'age': age,
      'phone': phone,
      'description': description,
    };
  }
}

class CreateCallResponseModel {
  final int status;
  final String message;

  CreateCallResponseModel({
    required this.status,
    required this.message,
  });

  factory CreateCallResponseModel.fromJson(Map<String, dynamic> json) {
    return CreateCallResponseModel(
      status: json['status'],
      message: json['message'],
    );
  }
}

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
  String? selectedDoctor; // ✅ Selected Doctor Name
  int? selectedDoctorId; // ✅ Selected Doctor ID

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
                selectedDoctor = selected.firstName; // ✅ Update Doctor Name
                selectedDoctorId = selected.id; // ✅ Store Doctor ID
              });
            }
          },
          child: CustomSelectSomeOneContainer(
            empName: selectedDoctor ?? 'Select Doctor', // ✅ Show Selected Doctor
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
    // ✅ Validate Input
    if (patientNameController.text.isEmpty ||
        ageController.text.isEmpty ||
        phoneNumberController.text.isEmpty ||
        caseDescriptionController.text.isEmpty ||
        selectedDoctorId == null) {
      showErrorDialog("All fields are required!");
      return;
    }

    try {
      await Future.delayed(const Duration(seconds: 2)); // Simulate Network Delay

      final response = CreateCallResponseModel(status: 200, message: "Call request sent successfully!");

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
      btnOkOnPress: () {},
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
