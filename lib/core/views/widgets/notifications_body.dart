import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/notifications_list_view.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_header.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomHeader(
            textStyle: AppStyles.textStyleMedium16(context)
                .copyWith(color: ColorManager.black),
            color: ColorManager.black,
            title: 'Notifications',
          ),
        ),
        Expanded(child: NotificationsListView())
      ],
    );
  }
}

