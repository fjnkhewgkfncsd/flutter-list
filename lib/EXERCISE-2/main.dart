import 'package:flutter/material.dart';

import 'ui/screens/profile.dart';

class ProfileData {
  final String name;
  final String role;
  final String imagePath;
  final List<TileDate> tiles;

  const ProfileData({
    required this.name,
    required this.role,
    required this.imagePath,
    required this.tiles,
  });
} 

class TileDate {
  final Icon icon;
  final String title;
  final String data;

  const TileDate({
    required this.icon,
    required this.title,
    required this.data,
  });
}

void main() {
  const profile = ProfileData(
    name: 'Ronan OGOR',
    role: 'Flutter Developer',
    imagePath: 'assets/ronan.jpg',
    tiles: [
      TileDate(
        icon: Icon(Icons.phone),
        title: "Phone Number",
        data: "+123 456 7890",
      ),
      TileDate(
        icon: Icon(Icons.location_on),
        title: "Address",
        data: "Cambodia",
      ),
      TileDate(
        icon: Icon(Icons.email),
        title: "Mail",
        data: "ronan.ogogr@cadt.edu",
      ),
      TileDate(
        icon: Icon(Icons.language),
        title: "Language",
        data: "English",
      ),
      TileDate(
        icon: Icon(Icons.language),
        title: "Language",
        data: "Khmer",
      ),
    ],
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profile: profile),
  ));
}
