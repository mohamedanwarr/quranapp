import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/core/Utilis/Styles.dart';
import 'package:quranapp/features/Tasbeh/presentation/viewes/widgets/ContainerNumTasbih.dart';
import 'package:quranapp/features/Tasbeh/presentation/viewes/widgets/ContainerTabonTasbih.dart';
import 'package:quranapp/features/Tasbeh/presentation/viewes/widgets/ListAndRefreshTasbih.dart';

class TasbehViewBody extends StatefulWidget {
  const TasbehViewBody({Key? key}) : super(key: key);

  @override
  State<TasbehViewBody> createState() => _TasbehViewBodyState();
}

class _TasbehViewBodyState extends State<TasbehViewBody> {
  String selectedContent = '';
  String selectedDescription = '';
  String name100 = '100';
  String men100 = 'من';
  bool showTexts = true;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    _setDefaultTasbih();
  }

  void _setDefaultTasbih() {
    setState(() {
      selectedContent = 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ';
      selectedDescription = 'يكتب له ألف حسنة أو يحط عنه ألف خطيئة';
     showTexts=true;
    });
  }

  void onTasbihSelected(String content, String description) {
    setState(() {
      selectedContent = content;
      selectedDescription = description;
      refresh();
    });
  }

  void refresh() {
    setState(() {
      counter = 0;
      showTexts = true;
    });
  }

  void incquantity() {
    setState(() {
      if (counter >= 0 && counter <100) {
        counter++;
      } else if (counter == 100) {
        showTexts = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 50),
      child: Column(
        children: [
          Text(
            selectedContent,
            textDirection: TextDirection.rtl,
            maxLines: 8,
            textHeightBehavior: const TextHeightBehavior(),
            style: Styles.TextStyle20.copyWith(
              color: Ktextmaincolor,
              fontFamily: Kfontsecond,
            ),
          ),
          const Spacer(),
          Container(
            decoration:
                BoxDecoration(color: Ktextsecondrycolor.withOpacity(0.1)),
            child: Text(
              selectedDescription,
              textDirection: TextDirection.rtl,
              style: Styles.TextStyle16.copyWith(
                color: Ktextmaincolor,
                fontFamily: Kfontsecond,
              ),
            ),
          ),
          const Spacer(),
          ContainerNumTasbih(
            countnum: showTexts ? counter.toString() : ' بارك لله فيك',
            name100: showTexts ? name100 : '',
            men100: showTexts ? men100 : '',
          ),
          const Spacer(),
          ContainerTabonTasbih(
            incquantity: incquantity,
          ),
          const SizedBox(
            height: 10,
          ),
          ListAndRefreshTasbih(
            onTasbihSelected: onTasbihSelected,
            onTabRefrsh: refresh,
          ),
        ],
      ),
    );
  }
}
