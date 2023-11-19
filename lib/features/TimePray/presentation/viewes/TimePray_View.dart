import 'package:flutter/material.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/widgets/TimePray_View_Body.dart';
class TimePrayView extends StatelessWidget {
  const TimePrayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: TimePrayViewBody(),
    );
  }
}


