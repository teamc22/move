import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:movie/data/dto/movie_dto.dart';

class MovieDataSource {
  final http.Client _client;

  Future<MovieDto> getMovieDto() async {
    await dotenv.load(fileName: '.env');
    final apiKey = dotenv.get('API_KEY');
    final url = 'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=ko-KR&page=1';
    final response = await _client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('통신에러 코드: ${response.statusCode}');
    }

    return MovieDto.fromJson(jsonDecode(response.body));
  }

  MovieDataSource({
    http.Client? client,
  }) : _client = client ?? http.Client();
}