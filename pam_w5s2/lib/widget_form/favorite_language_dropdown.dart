
import 'package:flutter/material.dart';

class FavoriteLanguageDropdown extends StatefulWidget {
  const FavoriteLanguageDropdown({super.key});

  @override
  State<FavoriteLanguageDropdown> createState() =>
      _FavoriteLanguageDropdownState();
}

class _FavoriteLanguageDropdownState
    extends State<FavoriteLanguageDropdown> {
  String? selectedLanguage = 'Dart';

  final List<String> languages = [
    'Dart',
    'Python',
    'JavaScript',
    'Kotlin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton Example'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Flexible(
                child: Text('Bahasa favorit: '),
              ),
              const SizedBox(width: 10),
              DropdownButton<String>(
                value: selectedLanguage,
                items: languages.map((language) {
                  return DropdownMenuItem<String>(
                    value: language,
                    child: Text(language),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedLanguage = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
