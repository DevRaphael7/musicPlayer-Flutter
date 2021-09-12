import 'package:flutter/material.dart';
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
      initialRoute: '/MusicPlayer',
      routes: {
        '/MusicPlayer': (context) => MusicPlayer() 
      },
    );
  }
}