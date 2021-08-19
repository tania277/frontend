import 'package:all_safe/models/accesoboveda.model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class AccesoProvider extends GetxController{
final _url = 'https://allsalfe.herokuapp.com/api/accesoboveda';
final _http = Dio();
List<AccesoModel> accesoboveda = [];

 Future<void> obtenerAccesoboveda() async {
   final _response =await _http.get(_url);
   List<dynamic> _accesoboveda = _response.data['accesoboveda'];

  final accesos = _accesoboveda.map((accesoboveda) => AccesoModel.fromMapJson(accesoboveda)).toList();
    accesos.addAll(accesoboveda);


    update();
 }
}