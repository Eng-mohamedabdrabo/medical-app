import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_calls_list_view.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_header.dart';

class NurseCallsView extends StatelessWidget {
  const NurseCallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomHeader(
                title: 'Calls',
                textStyle: AppStyles.textStyleRegular18(context).copyWith(
                  color: ColorManager.black,
                ),
                color: ColorManager.black,
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(child: NurseCallsListView(),)
            ],
          ),
        ),
      ),
    );
  }
}
