import 'package:flutter/material.dart';
import 'package:sleek/sleek.dart';
import 'sections/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sleek(
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Sleek Gallery',
          theme: ThemeData(
            accentColor: Sleek.of(context).palette.primary,
          ),
          home: ButtonSection(),
        ),
      ),
    );
  }
}
