import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_animations/widgets/button_widget.dart';

class fadeAn extends StatelessWidget {
  const fadeAn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ButtonWidget(
          onClicked: () => showCustomDialog(context),
          text: 'Show',
        ),
      ),
    );
  }

  Future showCustomDialog(BuildContext context) => showModal(
        configuration: FadeScaleTransitionConfiguration(
            transitionDuration: Duration(seconds: 2),
            reverseTransitionDuration: Duration(seconds: 2)),
        context: context,
        builder: (context) => AlertDialog(
          content: Text('FADE'),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('cancel'))
          ],
        ),
      );
}
