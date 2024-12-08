import 'package:flutter/material.dart';

class LocationDisplay extends StatelessWidget {
  final String latitude;
  final String longitude;
  final String address;

  const LocationDisplay({
    Key? key,
    required this.latitude,
    required this.longitude,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Latitude: $latitude'),
        Text('Longitude: $longitude'),
        Text('Address: $address'),
      ],
    );
  }
}

