import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import '../../features/manager/presentation/manager/create_report_cubit/create_report_cubit.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';

class CustomUploadImageContainer extends StatelessWidget {
  const CustomUploadImageContainer({super.key});

  Future<void> _pickImage(BuildContext context) async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      context.read<CreateReportCubit>().updateImage(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateReportCubit, CreateReportState>(
      builder: (context, state) {
        final image = context.read<CreateReportCubit>().image;
        return DottedBorder(
          color: ColorManager.gray.withValues(alpha: 0.2),
          dashPattern: const [22, 16],
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          child: InkWell(
            onTap: () => _pickImage(context),
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 205,
              width: double.infinity,
              color: Colors.white,
              child: image == null
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.imagesUploadImage),
                  const SizedBox(height: 24),
                  SvgPicture.asset(AppAssets.imagesUploadImageButton),
                ],
              )
                  : Image.file(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
