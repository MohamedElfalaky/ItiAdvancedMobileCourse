import 'package:dartz/dartz.dart';
import 'package:iti_adv_mobile_dev/core/errors/failure.dart';
import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';
import 'package:iti_adv_mobile_dev/movies/domain/repositories/base_movie_repository.dart';

class NowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;
  NowPlayingMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<MoviesEntity>>> execute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
