import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../hr/presentation/views/widgets/hr_employee_list_view.dart';
import '../../../../hr/presentation/views/widgets/hr_employee_upper_section.dart';

class ManagerEmployeeViewBody extends StatelessWidget {
  const ManagerEmployeeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: ColorManager.teal,
        shape: CircleBorder(), // Explicitly ensure circular shape
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
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
