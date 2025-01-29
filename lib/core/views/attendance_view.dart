import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/utils/assets.dart';
import 'package:medical_app/core/views/widgets/attendance_list_view.dart';
import 'package:medical_app/core/views/widgets/attendance_note_widget.dart';
import '../widgets/custom_data_info_header.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomDataInfoHeader(trailingWidget: SvgPicture.asset(AppAssets.imagesNotifications),),
                SizedBox(
                  height: 31,
                ),
                AttendanceNoteWidget(),
            
                AttendanceListView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

