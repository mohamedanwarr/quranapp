import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/widgets/Container_Info_AzkarDetails_ListView.dart';
class ContainerAzkarDetailsListView extends StatelessWidget {
  const ContainerAzkarDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Ktextsecondrycolor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)),
        child: const ContainerInfoAzkarDetailsListView(),
      ),
    );
  }
}

