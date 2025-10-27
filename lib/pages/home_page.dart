import 'package:flutter/material.dart';
import 'package:maranata_app/components/appbar_component.dart';
import 'package:maranata_app/components/drawer_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarComponent(
        title: 'Maranata',
        actions: [
          SizedBox(
            width: 100,
            height: 100,
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey.shade100,
              ),
              onSelected: null,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: "ACF",
                    child: Text(
                      "Almeida Corrigida Fiel"
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: "NVI",
                    child: Text(
                      "Nova Versão Internacional"
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: "AA",
                    child: Text(
                      "Almeida Atualizada"
                    ),
                  ),
                ];
              },
            ),
          ),
        ],
      ),
      drawer: DrawerComponent(title: "Drawer", nameItem: "Item"),
      body: Center(child: Text("Estrutura do app criado com sucesso 😀")),
    );
  }
}
