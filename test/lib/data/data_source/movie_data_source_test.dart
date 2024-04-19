import 'package:flutter_test/flutter_test.dart';
import 'package:movie/data/data_source/movie_data_source.dart';
import 'package:movie/data/dto/movie_dto.dart';

void main() {
  test('MovieDataSource 통신 테스트',() async {
    final api = MovieDataSource();
    final MovieDto dto = await api.getMovieDto();
    print(dto.results);
  });
}