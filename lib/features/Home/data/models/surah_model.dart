import 'package:quranapp/features/Home/Domain/entites/surah_entity.dart';
import 'package:quranapp/features/Home/data/models/ayah_model.dart';

class Surahs extends SurahEntity {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  List<Ayahs>? ayahs;

  Surahs(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.ayahs})
      : super(
          num: number ?? 0,
          arabicname: name ?? 'no name',
          englishname: englishName ?? "no name",
          revelationtype: revelationType ?? " no type",
          englishametranslation: englishNameTranslation ?? 'no name',
          ayahsnum:
              ayahs?.isNotEmpty == true ? ayahs![0].numberInSurah ?? 0 : 0,
          ayahtext: ayahs?.isNotEmpty == true
              ? ayahs![0].text ?? 'no found'
              : 'no found',
        );

  factory Surahs.fromJson(Map<String, dynamic> json) {
    List<Ayahs>? ayahsList = [];
    if (json['ayahs'] != null) {
      ayahsList = List<Ayahs>.from(json['ayahs'].map((ay) => Ayahs.fromJson(ay)));
    }

    return Surahs(
      number: json['number'],
      name: json['name'],
      englishName: json['englishName'],
      englishNameTranslation: json['englishNameTranslation'],
      revelationType: json['revelationType'],
      ayahs: ayahsList,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['number'] = number;
    data['name'] = name;
    data['englishName'] = englishName;
    data['englishNameTranslation'] = englishNameTranslation;
    data['revelationType'] = revelationType;
    data['ayahs'] = ayahs?.map((ay) => ay.toJson()).toList();
    return data;
  }
}

