import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';

class TimePrayCalendar extends StatefulWidget {
  const TimePrayCalendar({Key? key}) : super(key: key);

  @override
  State<TimePrayCalendar> createState() => _TimePrayCalendarState();
}

class _TimePrayCalendarState extends State<TimePrayCalendar> {
  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      headerProps: EasyHeaderProps(
          monthPickerType: MonthPickerType.switcher,
          selectedDateFormat: SelectedDateFormat.fullDateDayAsStrMY,
          showMonthPicker: true,
          showHeader: true,
          monthStyle: Styles.TextStyle16.copyWith(
            color: Ktextdarkcolor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12)),
      dayProps: const EasyDayProps(
        landScapeMode: true,
        todayHighlightStyle: TodayHighlightStyle.withBackground,
        dayStructure: DayStructure.monthDayNumDayStr,
        activeDayStyle: DayStyle(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFDD89FA), Color(0xFF9055FF)],
            ),
          ),
        ),
      ),
    );
  }
}
