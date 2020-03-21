import 'package:flutter/material.dart';
import 'package:flutter_app_wallpaper/wall_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter wallpaper',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: WallScreen()
    );
  }
}


