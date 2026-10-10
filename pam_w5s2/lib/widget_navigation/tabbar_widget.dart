
import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('FIC - TabBar'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_boat),
                text: 'Boat',
              ),
              Tab(
                icon: Icon(Icons.directions_bus),
                text: 'Bus',
              ),
              Tab(
                icon: Icon(Icons.directions_ferry),
                text: 'Ferry',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
      ),
    );
  }
}
