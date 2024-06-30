class APIConstants {
  static const String bsaeURL = 'https://api.themoviedb.org/3';
  static const String apiKey = 'bebc0c3c1ff0fac8f9ee7703dd99b5fb';

  // end points

  static const String getNowPlayingMoviesEndPoint =
      '$bsaeURL/movie/now_playing';
  static const String getPopularMoviesEndPoint = '$bsaeURL/movie/popular';
  static const String getTopRatedEndPoint = '$bsaeURL/movie/top_rated';
}
