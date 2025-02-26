import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class NotificationsListViewItem extends StatelessWidget {
  const NotificationsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    AppAssets.imagesProfilePic,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Text content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Mohamed Abdrabo',
                          style: AppStyles.textStyleRegular14(context).copyWith(
                            color:ColorManager.black,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text('02:39AM' , style: AppStyles.textStyleRegular8(context),),
                            const SizedBox(width: 4,),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: const ShapeDecoration(color:ColorManager.teal,shape: OvalBorder(
                              )),
                            )
                          ],
                        ),

                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'You have a new call from the manager',
                      style: AppStyles.textStyleRegular12(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 38,)
        ],
      ),
    );
  }
}
