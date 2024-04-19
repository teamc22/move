import 'package:movie/data/dto/movie_dto.dart';
import 'package:movie/domain/model/movie.dart';

extension MovieMapper on Results {
  Movie toMovie() {
    return Movie(
      adult: adult ?? false,
      id: id ?? 0,
      title: originalTitle ?? '',
      genreIds: genreIds ?? [],
      overview: overview ?? '',
      posterUrl: posterPath ?? ''
    );
  }
}
