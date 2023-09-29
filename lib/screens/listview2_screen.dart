import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final titles = const ['ToDo', 'Home', 'School', 'Library', 'Hospital'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Listview 2')),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(titles[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo,
                  ),
                  onTap: () {
                    final title = titles[index];
                    print(title);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: titles.length));
  }
}
