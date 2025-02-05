import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/my_profile_background.dart';
import 'package:medical_app/features/hr/presentation/views/widgets/hr_show_employee_profile_view_body.dart';

class HrShowEmployeeProfileView extends StatelessWidget {
  const HrShowEmployeeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyProfileBackground(child: HrShowEmployeeProfileViewBody()));
  }
}
