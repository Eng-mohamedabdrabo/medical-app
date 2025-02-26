import 'package:flutter/material.dart';
import '../../models/attendance_model.dart';
import 'attendance_list_view_item.dart';

import '../../utils/assets.dart';

class AttendanceListView extends StatelessWidget {
  const AttendanceListView({
    super.key,
  });

  static const List<AttendanceModel> items = [
    AttendanceModel(title: 'Attendance', subtitle: '09 : 00 am', icon: AppAssets.imagesGreenCheck),
    AttendanceModel(title: 'Attendance', subtitle: '09 : 00 am', icon: AppAssets.imagesLeaving),

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=>Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: AttendanceListViewItem(attendanceModel: e),
      )).toList(),
    );
  }
}

