import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';

abstract class BaseMoviesRepository {
  Future<List<MoviesEntity>> getNowPlayingMovies();
  Future<List<MoviesEntity>> getPopularMovies();
  Future<List<MoviesEntity>> getTopRatedMovies();
}
