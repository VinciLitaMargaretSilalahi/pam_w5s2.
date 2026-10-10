
import 'package:flutter/material.dart';

class AgreeTermsWidget extends StatefulWidget {
  const AgreeTermsWidget({super.key});

  @override
  State<AgreeTermsWidget> createState() =>
      _AgreeTermsWidgetState();
}

class _AgreeTermsWidgetState extends State<AgreeTermsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: const Text(
                'Agree Terms & Conditions',
              ),
              value: isChecked,
              activeColor: Colors.blue,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            Text(
              isChecked
                  ? 'Persetujuan diterima'
                  : 'Silakan setujui ketentuan',
            ),
          ],
        ),
      ),
    );
  }
}
