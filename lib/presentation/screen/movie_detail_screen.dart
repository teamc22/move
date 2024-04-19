import 'package:flutter/material.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('movieTitle'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 400,
              child: Image.network(
                  'https://image.tmdb.org/t/p/w500/4z1VMmlxHrziG45901esjB4dpIa.jpg'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                  ),
                  height: 35,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      'genreIds',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                  ),
                  height: 35,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      'genreIds',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 50),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey,
                  ),
                  height: 35,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Text(
                      '성인',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'overviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverviewoverview',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
