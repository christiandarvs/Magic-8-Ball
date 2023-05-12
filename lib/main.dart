import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magic_8_ball/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: const TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                fontSize: 20),
            backgroundColor: Colors.blue.shade800,
            systemOverlayStyle: SystemUiOverlayStyle.dark),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      title: 'Material App',
      home: const HomePage(),
    );
  }
}
