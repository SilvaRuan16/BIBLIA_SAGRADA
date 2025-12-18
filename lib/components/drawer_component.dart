import 'package:flutter/material.dart';
import 'package:maranata_app/config.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key, required this.title, required this.nameItem});

  final String title;
  final String nameItem;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: bodyColor),
            child: Center(child: Text(title, style: TextStyle(color: textColor, fontSize: titleFontSize))),
          ),
          ListTile(
            title: Text(nameItem, style: TextStyle(color: textColor, fontSize: textFontSize)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(nameItem, style: TextStyle(color: textColor, fontSize: textFontSize)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
