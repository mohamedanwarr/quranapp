import 'package:flutter/material.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/azkar_view_details_app_bar.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/widgets/Duaa_Details_View_Body.dart';

class DuaaDetailsView extends StatelessWidget {
  const DuaaDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AzkarDetailsViewAppBar(context, title: 'أدعية الأنبياء'),
      body: const DuaaDetailsViewBody(),
    );
  }
}


