import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/widgets/ListView_DetailsView_Info.dart';
class ListViewDetailsView extends StatelessWidget {
  const ListViewDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height*0.50,
      width: double.infinity,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return const ListViewDetailsViewInfo();
        },
        separatorBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: Ktextsecondrycolor.withOpacity(0.2),
              thickness: 1,
              endIndent: 10,
              indent: 10,
              height: 0,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}