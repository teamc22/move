import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/movie.dart';

part 'movie_list_state.freezed.dart';

part 'movie_list_state.g.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState({
    @Default([]) List<Movie> movie,
    @Default(false) bool isLoading,
  }) = _MovieListState;

  factory MovieListState.fromJson(Map<String, Object?> json) =>
      _$MovieListStateFromJson(json);
}
