import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CardScreen')),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.photo_library_outlined,
                    color: AppTheme.primary,
                  ),
                  title: Text('Soy una foto'),
                  subtitle: Text('Estoy describiendo la foto anterior'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
