import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class fadeThrogh extends StatefulWidget {
  const fadeThrogh({Key? key}) : super(key: key);

  @override
  State<fadeThrogh> createState() => _fadeThroghState();
}

class _fadeThroghState extends State<fadeThrogh> {
  int _selectedIndex = 0;

  final List<Color> _colors = [Colors.blue, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switcher Sample'),
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            child: child,
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
          );
        },
        child: Container(
          key: ValueKey<int>(_selectedIndex),
          color: _colors[_selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Blue',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Red',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Yellow',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
