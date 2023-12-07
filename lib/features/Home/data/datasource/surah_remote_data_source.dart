import 'package:quranapp/core/database/api/api_consumer.dart';
import 'package:quranapp/core/database/api/end_point.dart';
import 'package:quranapp/features/Home/data/models/surah_model.dart';

class SurahRemoteDataSource {
  final ApiConsumer api;

  SurahRemoteDataSource({required this.api});

  Future<Surahs>getSurah()  async {
    final response=await api.get(EndPoints.language);
    return Surahs.fromJson(response);
  }
}
