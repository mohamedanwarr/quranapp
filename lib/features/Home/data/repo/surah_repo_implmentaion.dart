import 'package:dartz/dartz.dart';
import 'package:quranapp/core/connections/network_info.dart';
import 'package:quranapp/core/errors/expentions.dart';
import 'package:quranapp/core/errors/failure.dart';
import 'package:quranapp/features/Home/Domain/entites/surah_entity.dart';
import 'package:quranapp/features/Home/Domain/repo/surah_repo.dart';
import 'package:quranapp/features/Home/data/datasource/surah_local_data_source.dart';
import 'package:quranapp/features/Home/data/datasource/surah_remote_data_source.dart';

class SurahRepoImpl extends SurahRepo {
  final NetworkInfo networkInfo;
  final SurahRemoteDataSource remoteDataSource;
  final SurahLocalDataSource localDataSource;

  SurahRepoImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, SurahEntity>> getSurah() async {
    if (await networkInfo.isConnected!) {
      try {
        final remoteSurah = await remoteDataSource.getSurah();
        localDataSource.cacheSurah(remoteSurah);
        return Right(remoteSurah);
      } on ServerException catch (e) {
        return Left(
          Failure(errMessage: e.errorModel.errorMessage),
        );
      }
    } else {
      try {
        final localSurah = await localDataSource.getLastSurah();
        return Right(localSurah);
      } on CacheExeption catch (e) {
        return Left(Failure(errMessage: e.errorMessage));
      }
    }
  }
}
