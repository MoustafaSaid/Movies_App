import 'package:flutter/material.dart';
import 'package:imdb_app/core/services/services_locator.dart';
import 'package:imdb_app/movies/presentation/screens/movies_screen.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MoviesScreen(),
    );
  }
}


