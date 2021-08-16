import 'package:all_safe/screens/admin.dart';
import 'package:all_safe/screens/alertas.dart';
import 'package:all_safe/screens/graficas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaginasAyN extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NavegacionModel(),
      child: Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
    }
}

class _Navegacion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<_NavegacionModel>(context);



    return BottomNavigationBar(
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.equalizer_sharp), label: 'Graficas'),
        BottomNavigationBarItem(icon: Icon(Icons.add_alert_sharp), label: 'Alertas' ),
        BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle), label: 'Usuario' ),
      ]
    );
  }
}


class _Paginas extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    final navegacionModel = Provider.of<_NavegacionModel>(context);
    
    return PageView(

      controller: navegacionModel.pageController,
      
      physics: NeverScrollableScrollPhysics(),
      children:<Widget>[

        GraficasPage(),

        AlertasPage(),

        AdministradorPage()

      ],
      );
  }
}

class _NavegacionModel with ChangeNotifier{
  int _paginaActual = 0;
  PageController _pageController = new PageController(initialPage: 0);

  int get paginaActual=> this._paginaActual;

  set paginaActual(int valor) {
    this._paginaActual = valor;

    _pageController.animateToPage(valor, duration: Duration(microseconds: 250), curve: Curves.easeOut);



    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
