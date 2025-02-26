import 'dart:async';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../utils/color_manager.dart';

class CustomCalendarSheet extends StatefulWidget {
  final void Function(DateTime) onDateSelected; // Callback for date selection

  const CustomCalendarSheet({super.key, required this.onDateSelected});

  @override
  State<CustomCalendarSheet> createState() => _CustomCalendarSheetState();
}

class _CustomCalendarSheetState extends State<CustomCalendarSheet> {
  late DateTime _selectedDate;
  late DateTime _focusedDay;
  final StreamController<DateTime> _selectedDateController =
      StreamController<DateTime>.broadcast();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _focusedDay = DateTime.now();
    _selectedDateController.add(_selectedDate);
  }

  @override
  void dispose() {
    _selectedDateController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.6,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StreamBuilder<DateTime>(
              stream: _selectedDateController.stream,
              initialData: _selectedDate,
              builder: (context, snapshot) {
                DateTime selectedDate = snapshot.data ?? _selectedDate;
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: TableCalendar(
                    key: ValueKey<DateTime>(selectedDate),
                    firstDay: DateTime(2025),
                    lastDay: DateTime(2050),
                    focusedDay: _focusedDay,
                    calendarFormat: CalendarFormat.month,
                    availableCalendarFormats: const {
                      CalendarFormat.month: 'Month',
                    },
                    calendarStyle: CalendarStyle(
                      selectedDecoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle,
                      ),
                      todayDecoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    selectedDayPredicate: (date) {
                      return isSameDay(selectedDate, date);
                    },
                    onDaySelected: (date, focusedDay) {
                      setState(
                        () {
                          _selectedDate = date;
                          _focusedDay = focusedDay;
                        },
                      );
                      _selectedDateController.add(date);

                      widget.onDateSelected(date);
                    },
                    calendarBuilders: CalendarBuilders(
                      selectedBuilder: (context, date, _) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: ColorManager.teal,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              date.day.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                      todayBuilder: (context, date, _) {
                        return Container(
                          decoration: BoxDecoration(
                            color: ColorManager.gray.withValues(alpha: 0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              date.day.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
