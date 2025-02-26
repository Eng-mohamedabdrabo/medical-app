import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets.dart';
import 'widgets/attendance_list_view.dart';
import 'widgets/attendance_note_widget.dart';
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
                const SizedBox(
                  height: 31,
                ),
                const AttendanceNoteWidget(),
            
                const AttendanceListView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

