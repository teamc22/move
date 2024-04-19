import 'package:go_router/go_router.dart';
import 'package:movie/domain/use_case/get_moive_use_case.dart';
import 'package:provider/provider.dart';

import '../data/data_source/movie_data_source.dart';
import '../data/repository/movie_repository_impl.dart';
import '../domain/model/movie.dart';
import '../presentation/screen/main_screen.dart';
import '../presentation/view_model/movie_list_view_model.dart';

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MovieListViewModel(
            getMovieUseCase: GetMovieUseCase(
              movieRepository: MovieRepositoryImpl(
                movieDataSource: MovieDataSource(),
              ),
            ),
          ),
          child: const MainScreen(),
        );
      },
    ),
    GoRoute(
      path: '/movie',
      builder: (context, state) {
        final Movie movie = state.extra as Movie;
        return MovieDetail(
          movie: movie,
        );
      },
    ),
  ],
);
