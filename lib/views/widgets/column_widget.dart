import 'package:flutter/widgets.dart';

class ColumnWidget extends StatelessWidget {
  final List<Widget> children;
  const ColumnWidget({ super.key, required this.children });
  @override Widget build(BuildContext context) {
    return Column( children: children );
  }
}
