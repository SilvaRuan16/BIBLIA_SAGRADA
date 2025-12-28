import 'package:biblia_sagrada/controllers/theme_controller.dart';
import 'package:biblia_sagrada/views/widgets/appbar_widget.dart';
import 'package:biblia_sagrada/views/widgets/body_widget.dart';
import 'package:biblia_sagrada/views/widgets/drawer_widget.dart';
import 'package:biblia_sagrada/views/widgets/list_widget.dart';
import 'package:biblia_sagrada/views/widgets/popup_menu_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(
      context,
      listen: false,
    );

    return Scaffold(
      appBar: AppbarWidget(
        title: 'Biblia livre',
        actions: [BibleVersionSelector()],
      ),
      drawer: DrawerWidget(),
      body: BodyWidget(
        child: ElevatedButton(onPressed: () => themeController.toggleTheme(), child: Text("Mudar theme")),
      ),
    );
  }
}
