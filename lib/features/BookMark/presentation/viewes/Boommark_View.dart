import 'package:flutter/material.dart';
import 'package:quranapp/core/Utilis/Functions/CustomeAppBar.dart';
import 'package:quranapp/features/BookMark/presentation/viewes/widgets/BookMark_View_Body.dart';

class BookMarkView extends StatelessWidget {
  const BookMarkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomeAppBar(title: 'Bookmarks'),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12),
          child: Column(
            children: [
              BookMarkViewBody(),
            ],
          ),
        ),
      ),
    );
  }
}


