import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);
  final titles = const ['ToDo', 'Home', 'School', 'Library'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Listview 1')),
      ),
      body: ListView(
        children: [
          ...titles
              .map(
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
