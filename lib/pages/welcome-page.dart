import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: OpenContainer(
            closedBuilder: (_, voidCallBack) {
              return Center(
                child: Container(
                  color: Colors.blue,
                  height: 150,
                  width: 150,
                ),
              );
            },
            transitionDuration: Duration(milliseconds: 1000),
            transitionType: ContainerTransitionType.fadeThrough,
            openBuilder: (_, voidCallBack) {
              return MyWidget();
            }),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
      ),
    );
    ;
  }
}
