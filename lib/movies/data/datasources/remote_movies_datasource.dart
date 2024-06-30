import 'package:dio/dio.dart';
import 'package:iti_adv_mobile_dev/core/errors/exceptions.dart';
import 'package:iti_adv_mobile_dev/core/network/api_constants.dart';
import 'package:iti_adv_mobile_dev/core/network/error_model.dart';
import 'package:iti_adv_mobile_dev/movies/data/datasources/base_movies_datasource.dart';
import 'package:iti_adv_mobile_dev/movies/data/models/movies_model.dart';
import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';

class RemoteMoviesDataSource extends BaseMoviesDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(APIConstants.getNowPlayingMoviesEndPoint,
        queryParameters: {'api_key': APIConstants.apiKey});

    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerExeption(ServerErrorModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesEntity>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MoviesEntity>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }
}
