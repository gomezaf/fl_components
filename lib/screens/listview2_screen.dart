import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final titles = const ['ToDo', 'Home', 'School', 'Library'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Listview 2')),
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
