import 'package:dio/dio.dart';
import 'package:iti_adv_mobile_dev/movies/data/models/movies_model.dart';
import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';

abstract class BaseMoviesDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesEntity>> getPopularMovies();
  Future<List<MoviesEntity>> getTopRatedMovies();
}
