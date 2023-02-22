import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const['Megaman','nnn','ddss','dddd']; 
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('ListView 2'),       
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