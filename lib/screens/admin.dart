import 'package:flutter/material.dart';

class AdministradorPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( elevation: 0, 
      backgroundColor: Colors.cyan[900],
      title: Center(
        child: Text('Perfil Administrador')
        ),  
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Container(
          width: 200,
          height: 400,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            image: DecorationImage(
              image: NetworkImage('https://www.brang.mx/admin/img/user.png'),  
            )
            ),
            ),
      ),
      );

  }
}