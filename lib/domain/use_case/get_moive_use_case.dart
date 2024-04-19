import 'package:movie/domain/repository/movie_reposiroty.dart';

import '../model/movie.dart';

class GetMovieUseCase {
  final MovieRepository _movieRepository;

  const GetMovieUseCase({
    required MovieRepository movieRepository,
  }) : _movieRepository = movieRepository;

  Future<List<Movie>> getMovieTool() async {
    return _movieRepository.getMovie();
  }
}
