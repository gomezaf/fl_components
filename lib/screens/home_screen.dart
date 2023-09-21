import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fl_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Center(child: Text('Componentes en Flutter'))),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.work_history_outlined),
          title: const Text('Aqui va un titulo de ruta'),
          onTap: () {
            // Esta es una forma de navegar, aqui puedo controlar animacion de transicion y etc.
            // final route = MaterialPageRoute(
            //     builder: (context) => const Listview2Screen());
            // Navigator.push(context, route);

            // esta es otra forma mas facil, pero que me restrinje mas
            Navigator.pushNamed(context, 'listview2');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 30,
      ),
    );
  }
}
