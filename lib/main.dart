import 'package:flutter/material.dart';
import 'package:musicplayer_m/pages/home.dart';
// import 'package:musicplayer_m/themes/light_mode.dart';
// import 'package:musicplayer_m/themes/dark_mode.dart';
import 'package:musicplayer_m/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create:(context) => ThemeProvider(),
      child:MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home:HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}