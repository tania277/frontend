

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {

  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(2, 48, 71, 1),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [

          _HeaderIcon(),
         
          this.child,
          
          

        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Image(image: AssetImage('assets/images/logopng.png',),
        ),
      ),
    );
  }
}

