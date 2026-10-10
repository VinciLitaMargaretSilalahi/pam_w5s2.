
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FIC - Drawer'),
      ),
      body: const Center(
        child: Text(
          'Tekan ikon menu di pojok kanan atas',
          textAlign: TextAlign.center,
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 40,
                ),
              ),
              accountName: Text('Nama Mahasiswa'),
              accountEmail: Text('mahasiswa@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Menu 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Menu 2'),
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Menu 2 dipilih'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
