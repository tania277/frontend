import 'package:all_safe/models/movimiento.model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class MovimientoProvider extends GetxController{
final _url = 'https://allsalfe.herokuapp.com/api/movimiento';
final _http = Dio();
List<MovimientoModel> movimiento = [];

 Future<void> obtenerMovimiento() async {
   final _response =await _http.get(_url);
   List<dynamic> _movimiento = _response.data['movimiento'];

   final movimientos = _movimiento.map((movimiento) => MovimientoModel.fromMapJson(movimiento)).toList();
    movimientos.addAll(movimiento);


  

    update();
 }
}