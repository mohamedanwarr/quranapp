import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/features/Tasbeh/Data/Models/TasbihList.dart';

Future<dynamic> TasbihModalBottomSheet(
    BuildContext context, Function(String, String) onTasbihSelected) {
  List<Map<String, String>> myTasbihList = Tasbih.tasbihList;
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    closeProgressThreshold: 20,
    context: context,
    builder: (context) => Container(
      height: 600,
      decoration: const BoxDecoration(
        color: Ktextlightcolor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'اختر من التسابيح',
                  style: Styles.TextStyle24.copyWith(color: Ktextmaincolor),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  String content = myTasbihList[index]['content'] ?? '';
                  String description =
                      myTasbihList[index]['description'] ?? '';
                  return GestureDetector(
                    onTap: () {
                      // Call the callback when a tasbih is selected
                      onTasbihSelected(content, description);

                      // Close the bottom sheet
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 250,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Ktextmaincolor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            content,
                            textDirection: TextDirection.rtl,
                            style: Styles.TextStyle18,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: myTasbihList.length,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}