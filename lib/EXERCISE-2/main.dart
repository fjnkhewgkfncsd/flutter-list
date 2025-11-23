import 'package:flutter/material.dart';

import 'ui/screens/profile.dart';
import 'model/profile_tile_model.dart';

void main() {
  ProfileData profile = ProfileData(
    name: 'Ronan OGOR',
    position: 'Flutter Developer',
    avatarUrl: 'assets/ronan.jpg',
    tiles: [
      TileData(
        icon: Icons.phone,
        title: "Phone Number",
        value: "+123 456 7890",
      ),
      TileData(
        icon: Icons.location_on,
        title: "Address",
        value: "Cambodia",
      ),
      TileData(
        icon: Icons.email,
        title: "Mail",
        value: "ronan.ogogr@cadt.edu",
      ),
      TileData(
        icon: Icons.language,
        title: "Language",
        value: "English",
      ),
      TileData(
        icon: Icons.language,
        title: "Language",
        value: "Khmer",
      ),
    ],
  );
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profile: profile),
  ));
}
