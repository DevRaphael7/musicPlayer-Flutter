import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'MusicPlayer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/HomePage',
      routes: {
        '/MusicPlayer': (context) => MusicPlayer(),
        '/HomePage': (context) => HomePage(), 
      },
    );
  }
}