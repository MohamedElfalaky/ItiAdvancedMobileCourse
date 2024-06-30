import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';

class MoviesModel extends MoviesEntity {
  MoviesModel(
      {required super.backdropPath,
      required super.title,
      required super.overview,
      required super.voteAverage,
      required super.realeasDate,
      required super.generIds});

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
      backdropPath: json['backdrop_path'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'],
      realeasDate: json['release_date'],
      generIds:
          List<int>.from((json['genre_ids'] as List).map((e) => e).toList()));
}
