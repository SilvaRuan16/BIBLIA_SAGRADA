import 'package:flutter/material.dart';

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
            decoration: BoxDecoration(color: Colors.brown),
            child: Center(child: Text(title)),
          ),
          ListTile(
            title: Text(nameItem),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(nameItem),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
