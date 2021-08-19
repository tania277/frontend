import 'package:all_safe/models/users.model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';


class UsersProvider extends GetxController{

  UsersProvider(){
    obtenerDatosUsers();
  }
final _url = 'https://allsalfe.herokuapp.com/api/users';
final _http = Dio();
List<UsersModel> usuario = [];

 Future<void> obtenerDatosUsers() async {
   final _response =await _http.get(_url);
   List<dynamic> _users = _response.data;

   final usuarios = _users.map((users) => UsersModel.fromMapJson(users)).toList();
    usuario.addAll(usuarios);

    update();
 }
}