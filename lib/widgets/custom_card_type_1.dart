import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_library_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy una foto'),
            subtitle: Text('Estoy describiendo la foto anterior'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Delete')),
                TextButton(onPressed: () {}, child: const Text('Save'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
