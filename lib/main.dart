import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/appbar/first_appbar.dart';
import 'package:flutter_sliver_app/appbar/fourth_appbar.dart';
import 'package:flutter_sliver_app/appbar/second_appbar.dart';
import 'package:flutter_sliver_app/appbar/third_appbar.dart';
import 'package:flutter_sliver_app/components/appbar.dart';
import 'package:flutter_sliver_app/components/content_and_map.dart';
import 'package:flutter_sliver_app/components/main_image.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              style: IconButton.styleFrom(
                minimumSize: Size(24, 24),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.ios_share, color: Colors.black)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, color: Colors.black)),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(),
          ),
        ],
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
      style: IconButton.styleFrom(
        minimumSize: Size(24, 24),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.ios_share, color: Colors.black)),
      IconButton(
          onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.black)),
    ],
  );
}
