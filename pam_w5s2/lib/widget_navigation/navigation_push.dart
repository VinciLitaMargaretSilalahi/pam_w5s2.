
import 'package:flutter/material.dart';
import 'navigation_pop.dart';

class NavigationPush extends StatelessWidget {
  const NavigationPush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Push'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NavigationPop(),
              ),
            );
          },
          child: const Text('Go to Next Page'),
        ),
      ),
    );
  }
}
