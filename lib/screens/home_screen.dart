import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../services/location_service.dart';
import '../services/storage_service.dart';
import '../widgets/location_display.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String latitude = '';
  String longitude = '';
  String address = '';

  Future<void> _fetchLocation() async {
    if (await Permission.location.request().isGranted) {
      final position = await LocationService.getCurrentLocation();
      final addr = await LocationService.getAddressFromCoordinates(
          position.latitude, position.longitude);

      setState(() {
        latitude = position.latitude.toString();
        longitude = position.longitude.toString();
        address = addr;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location permission denied')),
      );
    }
  }

  Future<void> _saveLocation() async {
    if (address.isNotEmpty) {
      await StorageService.saveFavoriteLocation(latitude, longitude, address);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location saved!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Landmarks'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, '/favorites');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LocationDisplay(latitude: latitude, longitude: longitude, address: address),
            ElevatedButton(
              onPressed: _fetchLocation,
              child: const Text('Fetch Location'),
            ),
            ElevatedButton(
              onPressed: _saveLocation,
              child: const Text('Save Location'),
            ),
          ],
        ),
      ),
    );
  }
}

