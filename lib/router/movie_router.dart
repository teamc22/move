import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) => MovieListViewModel(
              subwayRepository: MovieRepositoryImpl(
                  subWayDataSource: MovieDataSource()
              )
          ),
          child: const MovieMain(),
        );
      },
    ),
    GoRoute(
      path: '/movie',
      builder: (context, state) {
        final Movie movie = state.extra as Movie;
        return MovieDetail( movie: movie,);
      },
    ),
  ],
);