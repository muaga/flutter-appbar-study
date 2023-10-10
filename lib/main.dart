import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/appbar/first_appbar.dart';
import 'package:flutter_sliver_app/appbar/fourth_appbar.dart';
import 'package:flutter_sliver_app/appbar/second_appbar.dart';
import 'package:flutter_sliver_app/appbar/third_appbar.dart';
import 'package:flutter_sliver_app/components/content_and_map.dart';
import 'package:flutter_sliver_app/components/user_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AspectRatio(
              aspectRatio: 5 / 4,
              child: Image.network("http://picsum.photos/500/400")),
          UserBar("우하", "칠원읍", 41.7),
          ContentAndMap(),
        ],
      ),
    );
  }
}
