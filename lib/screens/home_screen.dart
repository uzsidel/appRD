import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_routers.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRouter.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a Robot Digital'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context , i) => ListTile(
          leading: Icon(menuOptions[i].icon, color: AppTheme.primary,),
          title: Text(menuOptions[i].name),
          onTap: () {
            //final route = MaterialPageRoute(builder: (context) =>  const ListviewScreen());

            Navigator.pushNamed(context, menuOptions[i].route);
          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length,
        )
    );
  }
}