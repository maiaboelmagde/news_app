import 'package:flutter/material.dart';
import 'package:news_app/Views/home_view.dart';

void main() {
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
