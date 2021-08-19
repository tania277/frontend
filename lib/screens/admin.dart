import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:slimy_card/slimy_card.dart';

class AdministradorPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( elevation: 0, 
      backgroundColor: Colors.cyan[900],
      title: Center(
        child: Text('Perfil Administrador'),
        ),  
      ),
      body: ListView(
        children: <Widget>[
        SizedBox(height: 50),
        SlimyCard(
          color: Colors.teal,
          topCardWidget: CustomTop(),
          bottomCardWidget: CustomBottom(),
          
          
        ),
       ],
      )
    );
  }
}

class CustomBottom extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          child: Text('¡Es un gusto verte de nuevo Monserrath!', style: TextStyle(fontSize: 20.0, color: Colors.white, ),),

      ),
    );
  }
}

class CustomTop extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        child: Image.network("https://www.nicepng.com/png/full/263-2636271_sign-in-to-start-your-session-admin-png.png")
      ),
    );
  }
}
