import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key,});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:   [
          const ListTile(
            leading: Icon(Icons.phone_android, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc'),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, 
              child: const Text('Cancelar')
              ),
              TextButton(onPressed: () {}, 
              child: const Text('Ok')
              ),
            ],
          ),
        ) 
        ],
      ),
    );

   

  }
}