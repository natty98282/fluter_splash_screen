// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natty/screens/home_screen.dart';
import 'package:natty/screens/playlist_screen.dart';
import 'package:natty/screens/song_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Song Player',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: HomePageScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomePageScreen()),
        GetPage(name: '/song', page: () => SongScreen()),
        GetPage(name: '/playlist', page: () => PlayListScreen()),
      ],
    );
  }
}
