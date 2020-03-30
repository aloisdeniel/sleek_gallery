import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek/sleek.dart';

import 'menus/menu.dart';
import 'menus/theme_menu.dart';

class SleekScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const SleekScaffold({
    Key key,
    @required this.title,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sleek = Sleek.of(context);
    return Scaffold(
      backgroundColor: sleek.palette.white,
      drawer: Menu(),
      endDrawer: ThemeMenu(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: sleek.palette.primary,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.palette),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
        title: SleekText(
          title,
          style: SleekTextStyle.title2(
            color: sleek.palette.primary.variants.invert,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1024,
            ),
            child: SleekPadding(
              padding: SleekInsets.medium(),
              child: body,
            ),
          ),
        ),
      ),
    );
  }
}
