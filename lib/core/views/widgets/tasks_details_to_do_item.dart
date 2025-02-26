import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';

class TasksDetailsToDoItem extends StatelessWidget {
  const TasksDetailsToDoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesGreenCheck),
        const SizedBox(width: 10,),
        Text('Lorem Ipsum is simply dummy text of' , style: AppStyles.textStyleRegular12(context),)
      ],
    );
  }
}