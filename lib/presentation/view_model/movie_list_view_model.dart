import 'package:flutter/cupertino.dart';
import 'package:movie/domain/repository/movie_reposiroty.dart';
import 'package:movie/domain/use_case/get_moive_use_case.dart';
import 'package:movie/presentation/view_model/movie_list_state.dart';

class MovieListViewModel with ChangeNotifier {
  GetMovieUseCase getMovieUseCase;

  MovieListViewModel({
    required this.getMovieUseCase,
  });

  MovieListState _state = const MovieListState();

  MovieListState get state => _state;

  void getMovie() async {
    _state = _state.copyWith(isLoading: true);

    notifyListeners();

    final movie = await getMovieUseCase.getMovieTool();

    _state = _state.copyWith(movie: movie, isLoading: false);

    notifyListeners();
  }
}
