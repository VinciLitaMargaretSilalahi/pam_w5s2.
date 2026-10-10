
import 'package:flutter/material.dart';

import '../widget_form/agree_term_widget.dart';
import '../widget_form/date_picker_page.dart';
import '../widget_form/dialog_widget.dart';
import '../widget_form/favorite_language_dropdown.dart';
import '../widget_form/gender_selection.dart';
import '../widget_form/instagram_connect_switch.dart';
import '../widget_form/name_text_field.dart';

import '../widget_navigation/bottom_navbar_widget.dart';
import '../widget_navigation/drawer_widget.dart';
import '../widget_navigation/navigation_push.dart';
import '../widget_navigation/sliver_widget.dart';
import '../widget_navigation/tabbar_widget.dart';

class MenuEntry {
  final String label;
  final Widget Function() page;

  const MenuEntry(this.label, this.page);
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuEntry> formMenu = [
      MenuEntry('TextField', () => const NameTextField()),
      MenuEntry(
        'Dropdown',
        () => const FavoriteLanguageDropdown(),
      ),
      MenuEntry(
        'Switch',
        () => const InstagramConnectSwitch(),
      ),
      MenuEntry('Radio', () => const GenderSelection()),
      MenuEntry(
        'Checkbox',
        () => const AgreeTermsWidget(),
      ),
      MenuEntry(
        'Date Picker',
        () => const DatePickerPage(),
      ),
      MenuEntry(
        'Dialog, BottomSheet & Snackbar',
        () => const DialogWidget(),
      ),
    ];

    final List<MenuEntry> navigationMenu = [
      MenuEntry(
        'Navigation Push & Pop',
        () => const NavigationPush(),
      ),
      MenuEntry(
        'Bottom Navigation Bar',
        () => const BottomNavbarWidget(),
      ),
      MenuEntry('Tab Bar', () => const TabbarWidget()),
      MenuEntry('Drawer', () => const DrawerWidget()),
      MenuEntry('Sliver', () => const SliverWidget()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('PAM W5S2 - Form & Navigation'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _sectionHeader('FORM'),
          ...formMenu.map(
            (entry) => _menuTile(context, entry),
          ),
          _sectionHeader('NAVIGATION & LAYOUT'),
          ...navigationMenu.map(
            (entry) => _menuTile(context, entry),
          ),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 16, 4, 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _menuTile(BuildContext context, MenuEntry entry) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(entry.label),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => entry.page(),
            ),
          );
        },
      ),
    );
  }
}
