import 'package:flutter/material.dart';
import 'package:sleek/sleek.dart';

import '../sections/buttons.dart';
import '../sections/typography.dart';

class Menu extends StatelessWidget {
  const Menu();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: SleekText('Typography', style: SleekTextStyle.title2()),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TypographySection(),
              ),
            ),
          ),
          ListTile(
            title: SleekText('Button', style: SleekTextStyle.title2()),
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ButtonSection(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
