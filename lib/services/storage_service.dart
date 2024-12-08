import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static Future<void> saveFavoriteLocation(
      String latitude, String longitude, String address) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    favorites.add('$latitude,$longitude,$address');
    await prefs.setStringList('favorites', favorites);
  }

  static Future<List<String>> getFavoriteLocations() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('favorites') ?? [];
  }
}

