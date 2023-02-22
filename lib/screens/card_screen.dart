import 'package:flutter/material.dart';
import 'package:fl_components/widget/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      
      body: 
      
      ListView(
        
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        children:  [
        Image.network('http://robotdigital.com.mx/wp-content/uploads/2020/08/robot-digital-03.png'),  
         // CustomCard(),
        SizedBox(height: 5,), 
           CustomCard2(imgUrl: 'http://robotdigital.com.mx/wp-content/uploads/2021/09/MP_02-1-600x200.png', name: '¡Nos complace informar que somos Partner Oficial de Microsoft!'),
          SizedBox(height: 10,),
          CustomCard2(imgUrl: 'http://robotdigital.com.mx/wp-content/uploads/2021/09/microsoft-dynamics-365.jpg', name: '¡Ofrecemos consultoría y Desarrollo de Proyectos en Microsoft Dynamics 365!'),
          SizedBox(height: 10,),
          CustomCard2(imgUrl: 'http://robotdigital.com.mx/wp-content/uploads/2021/02/LaRoboticaalServiciodelasEmpresasentiempodeCOVID.png',),
         
        ],
      ),
      
    );
  }
}

