import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/movie_list_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() => context.read<MovieListViewModel>().getMovie() );
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieListViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Slider'),
      ),
      body: Column(

        children: [

          SizedBox(
            height: 270,
            child: PageView.builder(
              itemCount: viewModel.state.movie.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.network(
                  state.movie[index].posterUrl,
                  // fit: BoxFit.cover,
                );
              },
            ),
          ),
          GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children:state.movie
                .map(
                  (e) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                      //PhotoDetailScreen(photo: photo),
                    ),
                  );
                },
                child: Hero(
                  //  tag: photo.id,
                    tag: e.id,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        e.posterUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
              ),
            ).toList(),
          )

        ],
      ),
    );
  }
}
