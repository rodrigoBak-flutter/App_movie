import 'package:flutter/material.dart';

import 'package:movie_ticket_app/src/features/movies/movies_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cine App',
      home: MoviesPage(),
    );
  }
}
