
import 'package:all_safe/screens/login_screen.dart';
import 'package:all_safe/screens/paginas_AyN.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>PageController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Productos App',
       
       initialRoute: 'login',
        routes: {
          'login': ( _ ) => LoginScreen(),
          'paginas': ( _ )=> PaginasAyN()
       },
      ),
    );
  }
}
