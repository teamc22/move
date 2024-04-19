import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required bool adult,
    required num id,
    required String title,
    required List<num> genreIds,
    required String overview,
    required String posterUrl,
  }) = _Movie;
  
  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json); 
}