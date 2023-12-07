import 'dart:convert';

import 'package:quranapp/core/database/cache/cach_helper.dart';
import 'package:quranapp/core/errors/expentions.dart';
import 'package:quranapp/features/Home/data/models/surah_model.dart';

class SurahLocalDataSource {
  final CacheHelper cacheHelper;
  final CacheKey = 'CachedSurah';

  SurahLocalDataSource({required this.cacheHelper});

  cacheSurah(Surahs? surahsToCache) {
    if (surahsToCache != null) {
      cacheHelper.saveData(
        key: CacheKey,
        value: json.encode(
          surahsToCache.toJson(),
        ),
      );
    } else {
      throw CacheExeption(errorMessage: 'No Internt Connection');
    }
  }

  Future<Surahs> getLastSurah() {
    final jsonString = cacheHelper.getDataString(key: CacheKey);
    if (jsonString != null) {
      return Future.value(Surahs.fromJson(jsonDecode(jsonString)));
    } else {
      throw CacheExeption(errorMessage: 'No Internt Connection');
    }
  }
}
