import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Music App",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(body: const Home_Page()),
    );
  }
}
