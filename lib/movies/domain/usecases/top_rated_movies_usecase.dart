import 'package:iti_adv_mobile_dev/movies/domain/entities/now_playing_movies_entity.dart';
import 'package:iti_adv_mobile_dev/movies/domain/repositories/base_movie_repository.dart';

class TopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;
  TopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<List<MoviesEntity>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
