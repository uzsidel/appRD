import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imgUrl;
  final String? name;

  const CustomCard2({Key? key, 
  required this.imgUrl,  this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(//SE usa por si la imagen no carga
            image: NetworkImage(imgUrl), 
            placeholder:  const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.contain,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
            if(name != null)
              Container(
                alignment: AlignmentDirectional.center,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                child:  Text(name ?? 'no titulo', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              )
        ],
      ),
    );
  }
}