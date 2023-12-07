import 'package:dartz/dartz.dart';
import 'package:quranapp/core/errors/failure.dart';
import 'package:quranapp/features/Home/Domain/entites/surah_entity.dart';

abstract class SurahRepo{
Future<Either<Failure,SurahEntity>> getSurah();
}