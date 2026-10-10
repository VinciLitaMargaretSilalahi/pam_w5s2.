
import 'package:flutter/material.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
              background: ColoredBox(
                color: Colors.deepPurple,
                child: Center(
                  child: Icon(
                    Icons.flutter_dash,
                    size: 90,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  color: index.isEven
                      ? Colors.blue.shade100
                      : Colors.white,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
