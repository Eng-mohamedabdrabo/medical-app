import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../features/hr/presentation/manager/all_users_cubit/all_users_cubit.dart';
import 'custom_employee_filtering_list_view_item.dart';

class CustomEmployeeFilteringListView extends StatefulWidget {
  const CustomEmployeeFilteringListView({super.key});

  static const List<String> items = [
    'All',
    'Doctor',
    'Nurse',
    'HR',
    'Analysis',
    'Receptionist',
  ];

  @override
  State<CustomEmployeeFilteringListView> createState() => _CustomEmployeeFilteringListViewState();
}

class _CustomEmployeeFilteringListViewState extends State<CustomEmployeeFilteringListView> {
  int selectedIndex = 0;

  void _onFilterSelected(int index) {
    setState(() {
      selectedIndex = index;
    });

    final cubit = context.read<AllUsersCubit>();

    if (index == 0) {
      cubit.getAllUsers(); // Fetch all users
    } else {
      final type = CustomEmployeeFilteringListView.items[index].toLowerCase();
      cubit.getFilteredUsers(type: type);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: ListView.builder(
        key: ValueKey<int>(selectedIndex), // Prevents unnecessary rebuilds
        scrollDirection: Axis.horizontal,
        itemCount: CustomEmployeeFilteringListView.items.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomEmployeeFilteringListViewItem(
            text: CustomEmployeeFilteringListView.items[index],
            isSelected: selectedIndex == index,
            onTap: () => _onFilterSelected(index),
          ),
        ),
      ),
    );
  }
}
