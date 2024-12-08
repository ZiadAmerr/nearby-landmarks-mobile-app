import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/favorites_screen.dart';

void main() {
  runApp(const NearbyLandmarksApp());
}

class NearbyLandmarksApp extends StatelessWidget {
  const NearbyLandmarksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nearby Landmarks',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/favorites': (context) => const FavoritesScreen(),
      },
    );
  }
}

