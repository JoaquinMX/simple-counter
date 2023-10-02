import 'package:flutter/material.dart';
import 'package:simple_counter/app/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    const primary = Color(0xFF40B7AD);
    const textColor = Color(0xFF4A4A4A);
    const backgroundColor = Color(0xFFE5E5E5);

    return MaterialApp(
      title: 'Simple Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primary),
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: "Poppins",
          bodyColor: textColor,
          displayColor: textColor
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Simple Counter'),
    );
  }
}