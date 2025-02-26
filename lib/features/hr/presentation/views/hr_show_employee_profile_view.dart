import 'package:flutter/material.dart';
import '../../../../core/views/widgets/my_profile_background.dart';
import 'widgets/hr_show_employee_profile_view_body.dart';

class HrShowEmployeeProfileView extends StatelessWidget {
  const HrShowEmployeeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MyProfileBackground(child: HrShowEmployeeProfileViewBody()));
  }
}
