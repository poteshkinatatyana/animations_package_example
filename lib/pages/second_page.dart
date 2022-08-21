import 'package:flutter/material.dart';
import 'package:flutter_application_animations/pages/fade.dart';
import 'package:flutter_application_animations/pages/fade_through.dart';
import 'package:flutter_application_animations/pages/shared-axis.dart';
import 'package:flutter_application_animations/pages/welcome-page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => fadeAn()));
            },
            child: Text('Это анимация fade')),
        RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GetStarted()));
            },
            child: Text('Это анимация Container transform')),
        RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => fadeThrogh()));
            },
            child: Text('Это анимация fadeThrogh')),
      ],
    ));
  }
}
