import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_application_animations/pages/fade.dart';
import 'package:flutter_application_animations/pages/fade_through.dart';
import 'package:flutter_application_animations/pages/shared-axis.dart';
import 'package:flutter_application_animations/pages/welcome-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
      ),
      darkTheme: ThemeData.dark(),
      title: 'Hello',
      initialRoute: '/',
      routes: {
        '/': (context) => SharedAxisPage(),
        '/getStarted': (context) => GetStarted(),
        '/fade': (context) => fadeAn(),
        '/fadeThrough': (context) => fadeThrogh(),
      },
    );
  }
}
