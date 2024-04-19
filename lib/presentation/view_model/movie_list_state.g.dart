// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieListStateImpl _$$MovieListStateImplFromJson(Map<String, dynamic> json) =>
    _$MovieListStateImpl(
      movie: (json['movie'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$MovieListStateImplToJson(
        _$MovieListStateImpl instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'isLoading': instance.isLoading,
    };
