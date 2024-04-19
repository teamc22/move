import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/movie_list_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
       context.read<MovieListViewModel>().getMovie();
    });

    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentIndex < context.read<MovieListViewModel>().state.movie.length) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }

      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieListViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Slider'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 270,
            child: PageView.builder(
              controller: _pageController,
              itemCount: state.movie.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.network(
                  state.movie[index].posterUrl,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          const SizedBox(
            height:20
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                crossAxisCount: 2,
                children: state.movie.map((movie) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                          onTap: () {},
                          child: Hero(
                            tag: movie.id,
                            child: Image.network(
                              movie.posterUrl,
                              fit: BoxFit.cover,
                            ),
                          )));
                }).toList()),
          ),
        ],
      ),
    );
  }
}
