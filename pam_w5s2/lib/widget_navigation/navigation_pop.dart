
import 'package:flutter/material.dart';

class NavigationPop extends StatelessWidget {
  const NavigationPop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Pop'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Go Back (Pop)'),
        ),
      ),
    );
  }
}
