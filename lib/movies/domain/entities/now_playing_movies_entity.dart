class MoviesEntity {
  final String backdropPath;
  final String title;
  final String overview;
  final num voteAverage;
  final String realeasDate;
  final List<int> generIds;

  MoviesEntity(
      {required this.backdropPath,
      required this.title,
      required this.overview,
      required this.voteAverage,
      required this.realeasDate,
      required this.generIds});
}
