import 'package:movie/domain/model/movie.dart';

abstract interface class MovieRepository {
  Future<List<Movie>> getMovie();
}
