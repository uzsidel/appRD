
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
   
  const ContactScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("¿Como te podemos ayudar?"),
      ),
      body:
      SingleChildScrollView( 
        child: Container(
          child: _FormSave(),
        ),
      ),
    );
  }
}

class _FormSave extends StatelessWidget {

  _FormSave({Key? key}) : super(key: key);
  
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final telController = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: nameController,
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Tienes que llenar los datos";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Tu nombre",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 5,),
            TextFormField(
              controller: emailController,
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Tienes que llenar los datos";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Tu email",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 5,),
            TextFormField(
              controller: telController,
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Tienes que llenar los datos";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Tel/WhatsApp",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              controller: contentController,
              validator: (value){
                if(value == null || value.isEmpty){
                  return "Tienes que llenar los datos";
                }
                return null;
              },
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: "¿Como te podemos ayudar?",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 10,),
            ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      //gradient: LinearGradient(
                        
                        // <Color>[
                        //   Color(0xFF0D47A1),
                        //   Color(0xFF1976D2),
                        //   Color(0xFF42A5F5),
                        // ],
                     // ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      displayDialog(context);
                      Navigator.pop(context);
                      print(context); 
                      //Operation.insertar(Note(id: 1, title: titleController.text, content: contentController.text));
                    }
                  },
                  child: const Text('ENVIAR MENSAJE'),
                ),
              ],
            ),
             ),
           ],
        )
      ),
    );
  }

  void displayDialog(BuildContext context){
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
              child: const Text('Aceptar'),
              onPressed:() => Navigator.pop(context),
              )
          ],
        );
      },
    );
  }
}  
