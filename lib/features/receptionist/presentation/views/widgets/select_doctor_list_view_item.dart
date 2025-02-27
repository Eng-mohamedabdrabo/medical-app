import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../hr/data/models/all_users_model.dart';
import '../../../../hr/presentation/manager/all_users_cubit/all_users_cubit.dart';

class SelectDoctorListViewItem extends StatelessWidget {
  final AllUsersModel doctor;

  const SelectDoctorListViewItem({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AllUsersCubit>();
    final isSelected = cubit.selectedDoctor == doctor;

    return GestureDetector(
      onTap: () {
        context.read<AllUsersCubit>().selectDoctor(doctor); // ✅ تحديد الطبيب عند الضغط
      },
      child: ListTile(
        leading: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                AppAssets.imagesProfilePic,
                fit: BoxFit.cover,
                width: 45,
                height: 45,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset(AppAssets.imagesActive),
            ),
          ],
        ),
        title: Text(
          doctor.firstName,
          style: AppStyles.textStyleRegular14(context).copyWith(color: ColorManager.black),
        ),
        subtitle: Text('Specialist - ${doctor.type}', style: AppStyles.textStyleRegular12(context)),
        trailing: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorManager.gray.withValues(alpha: 0.1),
          ),
          child: Center(
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? ColorManager.teal : ColorManager.gray.withValues(alpha: 0.2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
