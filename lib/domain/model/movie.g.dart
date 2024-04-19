// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieImpl _$$MovieImplFromJson(Map<String, dynamic> json) => _$MovieImpl(
      adult: json['adult'] as bool,
      id: json['id'] as num,
      title: json['title'] as String,
      genreIds:
          (json['genreIds'] as List<dynamic>).map((e) => e as num).toList(),
      overview: json['overview'] as String,
      posterUrl: json['posterUrl'] as String,
    );

Map<String, dynamic> _$$MovieImplToJson(_$MovieImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'title': instance.title,
      'genreIds': instance.genreIds,
      'overview': instance.overview,
      'posterUrl': instance.posterUrl,
    };
