import 'package:quranapp/features/Home/Domain/entites/sub_entity.dart';

class SurahEntity {
  final int number;
  final String arabicname;
  final String englishname;
  final String revelationtype;
  final String englishNameTranslation;
  final AyahsEntity ayahsEntity;

  SurahEntity({required this.number, required this.arabicname, required this.englishname, required this.revelationtype, required this.englishNameTranslation, required this.ayahsEntity});
}

