import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // لتحويل التاريخ إلى نص منسق
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CreateAndEditUserData extends StatefulWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController mobileController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController addressController;
  final Function(String) onGenderChanged;
  final Function(String) onStatusChanged;
  final Function(String) onDateOfBirthChanged;
  final Function(String) onTypeChanged;

  const CreateAndEditUserData({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.mobileController,
    required this.emailController,
    required this.passwordController,
    required this.addressController,
    required this.onGenderChanged,
    required this.onStatusChanged,
    required this.onDateOfBirthChanged, required this.onTypeChanged,
  });

  @override
  _CreateAndEditUserDataState createState() => _CreateAndEditUserDataState();
}

class _CreateAndEditUserDataState extends State<CreateAndEditUserData> {
  final TextEditingController dateOfBirthController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000, 1, 1),
      firstDate: DateTime(1950, 1, 1),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        dateOfBirthController.text = formattedDate;
      });
      widget.onDateOfBirthChanged(formattedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: widget.firstNameController,
          hintText: 'First name',
          leadingIcon: AppAssets.imagesUserProfile,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          controller: widget.lastNameController,
          hintText: 'Last name',
          leadingIcon: AppAssets.imagesUserProfile,
        ),
        const SizedBox(height: 20),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.male  , color: ColorManager.teal,),
            hintText: 'Gender',
            hintStyle: TextStyle(
              color: ColorManager.gray.withValues(alpha: 0.8),
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorManager.gray.withOpacity(0.4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorManager.teal),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          dropdownColor: Colors.white,
          items: ['Male', 'Female'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: ColorManager.gray.withValues(alpha: 0.4),
                ),
              ),
            );
          }).toList(),
          onChanged: (value) => widget.onGenderChanged(value ?? 'Male'),
        ),

        const SizedBox(height: 20),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: AbsorbPointer(
            child: CustomTextFormField(
              controller: dateOfBirthController,
              hintText: 'Date of birth',
              leadingIcon: AppAssets.imagesCalender,
              trailingIcon: Icons.arrow_drop_down_outlined,
            ),
          ),
        ),
        const SizedBox(height: 20),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.heart_broken  , color: ColorManager.teal,),
            hintText: 'Status',
            hintStyle: TextStyle(
              color: ColorManager.gray.withValues(alpha: 0.4),
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorManager.gray.withValues(alpha: .4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorManager.teal),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          dropdownColor: Colors.white,
          items: ['Single', 'Married', 'Divorced'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: ColorManager.gray.withOpacity(0.8),
                ),
              ),
            );
          }).toList(),
          onChanged: (value) => widget.onStatusChanged(value ?? 'Single'),
        ),
        const SizedBox(height: 20),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.work_outline  , color: ColorManager.teal,),
            hintText: 'type',
            hintStyle: TextStyle(
              color: ColorManager.gray.withValues(alpha: 0.4),
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: ColorManager.gray.withValues(alpha: .4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: ColorManager.teal),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          dropdownColor: Colors.white,
          items: ['doctor', 'hr', 'receptionist','Analysis', 'manger', 'Nurse'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: ColorManager.gray.withOpacity(0.8),
                ),
              ),
            );
          }).toList(),
          onChanged: (value) => widget.onTypeChanged(value ?? 'hr'),
        ),
        const SizedBox(height: 20),

        CustomTextFormField(
          controller: widget.mobileController,
          hintText: 'Phone Number',
          leadingIcon: AppAssets.imagesCall,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          controller: widget.emailController,
          hintText: 'E-mail',
          leadingIcon: AppAssets.imagesMessage,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          controller: widget.addressController,
          hintText: 'Address',
          leadingIcon: AppAssets.imagesLocation,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          controller: widget.passwordController,
          hintText: 'Password',
          leadingIcon: AppAssets.imagesLock,
          trailingIcon: Icons.remove_red_eye_outlined,
        ),
      ],
    );
  }
}
