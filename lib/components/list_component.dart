import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  const ListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}
