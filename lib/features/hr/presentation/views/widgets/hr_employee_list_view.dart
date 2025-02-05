import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/features/hr/presentation/views/widgets/hr_employee_list_view_item.dart';

import '../../../../../core/utils/app_router.dart';

class HrEmployeeListView extends StatelessWidget {
  const HrEmployeeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kHrShowEmployeeProfileView);

          },
          child: HrEmployeeListViewItem(),
        ),
      ),
    );
  }
}
