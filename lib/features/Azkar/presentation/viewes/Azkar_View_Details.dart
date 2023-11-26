import 'package:flutter/material.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/Azkar_Details_View_Body.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/azkar_view_details_app_bar.dart';


class AzkarViewDetails extends StatelessWidget {
  const AzkarViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzkarDetailsViewAppBar(context, title: 'اذكار الصباح'),
      body: const AzkarDetailsViewBody(),
    );
  }
}

