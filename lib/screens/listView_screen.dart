import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const['Megaman','nnn','ddss','dddd']; 
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile(title: Text(e)),
          ).toList()
        ],
      )
      
    );
  }
}