import 'package:flutter/material.dart';

class AppbarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppbarComponent({super.key, required this.title, this.actions});

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.brown,
      title: Text(title, style: TextStyle(color: Colors.grey.shade100)),
      actions: [...actions ?? []],
      iconTheme: IconThemeData(color: Colors.grey.shade100),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
