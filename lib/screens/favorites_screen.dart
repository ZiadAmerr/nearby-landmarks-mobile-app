import 'package:flutter/material.dart';
import '../services/storage_service.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<String> favorites = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final savedLocations = await StorageService.getFavoriteLocations();
    setState(() {
      favorites = savedLocations;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Locations')),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final location = favorites[index].split(',');
          return ListTile(
            title: Text(location[2]),
            subtitle: Text('Lat: ${location[0]}, Lng: ${location[1]}'),
          );
        },
      ),
    );
  }
}

