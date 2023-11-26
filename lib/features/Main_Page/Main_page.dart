import 'package:flutter/material.dart';
import 'package:quranapp/Constant.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/Azkar_View.dart';
import 'package:quranapp/features/BookMark/presentation/viewes/Boommark_View.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/Duaa_View.dart';




import 'package:quranapp/features/Home/Presentation/Viwes/HomeView.dart';
import 'package:quranapp/features/Main_Page/presentation/viewes/widgets/Bottom_Nav.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/TimePray_View.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomeViwe(),
    const DuaaView(),
    const TimePrayView(),
    const AzkarView(),
    const BookMarkView()
  ];
  int currentindex = 0;

  void onTab(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Ktextlightcolor),
        child: SafeArea(child: buildBottomNav(ontab: onTab,currentindex: currentindex)),
      ),
      body: pages[currentindex],
    );
  }


}
