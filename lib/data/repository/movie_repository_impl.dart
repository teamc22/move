import 'package:movie/data/data_source/movie_data_source.dart';
import 'package:movie/data/dto/movie_dto.dart';
import 'package:movie/data/mapper/movie_mapper.dart';
import 'package:movie/domain/repository/movie_reposiroty.dart';

import '../../domain/model/movie.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieDataSource _movieDataSource;

  const MovieRepositoryImpl({
    required MovieDataSource movieDataSource,
  }) : _movieDataSource = movieDataSource;

  @override
  Future<List<Movie>> getMovie() async {
    final movieDto = await _movieDataSource.getMovieDto();

    if (movieDto.results == null) {
      return [];
    }
    return movieDto.results!.map((e) => e.toMovie()).toList();
  }
}
