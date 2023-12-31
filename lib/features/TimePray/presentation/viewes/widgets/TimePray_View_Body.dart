import 'package:flutter/material.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/widgets/ListView_Waket_Salat.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/widgets/TimePray_Calendar.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/widgets/TimePray_Custom__AppBar.dart';

class TimePrayViewBody extends StatelessWidget {
  const TimePrayViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TimePrayCustomAppBar(context),
      body: Column(
        children: [
          const TimePrayCalendar(),
          const SizedBox(
            height: 10,
          ),
          ListViewWaketSalat()
        ],
      ),
    );
  }
}
