import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar:
          AppBar(title: const Center(child: Text('Componentes en Flutter'))),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOptions[i].icon),
          title: Text(menuOptions[i].name),
          onTap: () {
            // Esta es una forma de navegar, aqui puedo controlar animacion de transicion y etc.
            // final route = MaterialPageRoute(
            //     builder: (context) => const Listview2Screen());
            // Navigator.push(context, route);

            // esta es otra forma mas facil, pero que me restrinje mas
            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
