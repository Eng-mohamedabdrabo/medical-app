import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/features/hr/presentation/views/widgets/hr_employee_list_view.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/color_manager.dart';
import 'hr_employee_upper_section.dart';

class HrEmployeeViewBody extends StatelessWidget {
  const HrEmployeeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kHrCreateUserView);
        },
        backgroundColor: ColorManager.teal,
        shape: const CircleBorder(), // Explicitly ensure circular shape
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: HrEmployeeUpperSection(),
          ),
          SizedBox(height: 14),
          Expanded(
            child: HrEmployeeListView(),
          ),
        ],
      ),
    );
  }
}
