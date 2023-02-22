import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Informacion Enviada'),
              SizedBox(height: 10),
              //FlutterLogo(size: 20,),
              Icon(Icons.check)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),//regresa a una ventana anterior
              child: const Text('Aceptar')
            )
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Info'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,//los hijos determinan el tamano de la ventana
            children: const[
              Text('Informacion Enviada'),
              SizedBox(height: 10),
              //FlutterLogo(size: 20,),
              Icon(Icons.check)
            ],
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context),
              child: const Text('Aceptar')
              )
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(//los estilos se ponen en app_theme
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:  Text('Mostrar Alerta', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          //onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid//para el tipo de plataforma
          ? displayDialogAndroid(context)
          : displayDialogIOS(context),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cached_outlined),
        onPressed:() {
          Navigator.pop(context);//regresa a la pantalla anterior
        },
      ) 
    );
  }
}