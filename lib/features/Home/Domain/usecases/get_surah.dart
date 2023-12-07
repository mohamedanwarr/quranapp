import 'package:dartz/dartz.dart';
import 'package:quranapp/core/errors/failure.dart';
import 'package:quranapp/features/Home/Domain/entites/surah_entity.dart';
import 'package:quranapp/features/Home/Domain/repo/surah_repo.dart';

class GetSurah {
  final SurahRepo surahRepo;

  GetSurah({required this.surahRepo});

  Future<Either<Failure, SurahEntity>> call() {
    return surahRepo.getSurah();
  }
}
