import 'package:dartz/dartz.dart';
import 'package:iti_adv_mobile_dev/core/errors/failure.dart';
import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MoviesEntity>>> getNowPlayingMovies();
  Future<Either<Failure, List<MoviesEntity>>> getPopularMovies();
  Future<Either<Failure, List<MoviesEntity>>> getTopRatedMovies();
}
