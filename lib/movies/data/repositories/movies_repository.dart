import 'package:dartz/dartz.dart';
import 'package:iti_adv_mobile_dev/core/errors/exceptions.dart';
import 'package:iti_adv_mobile_dev/core/errors/failure.dart';
import 'package:iti_adv_mobile_dev/movies/data/datasources/base_movies_datasource.dart';
import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';
import 'package:iti_adv_mobile_dev/movies/domain/repositories/base_movie_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMoviesDataSource baseMoviesDataSource;
  MoviesRepository(this.baseMoviesDataSource);

  @override
  Future<Either<Failure, List<MoviesEntity>>> getNowPlayingMovies() async {
    try {
      final result = await baseMoviesDataSource.getNowPlayingMovies();

      return Right(result);
    } on ServerExeption catch (e) {
      return Left(ServerFailure(e.errorModel.statusMessage));
    } on LocalException catch (e) {
      return Left(LocalFailure(e.msg));
    }
  }

  @override
  Future<Either<Failure, List<MoviesEntity>>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MoviesEntity>>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }
}
