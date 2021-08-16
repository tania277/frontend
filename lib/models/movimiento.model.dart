import 'dart:convert';
import 'package:all_safe/provider/movimiento.provider.dart';
import 'package:http/http.dart' as http;


class MovimientoApi {
  static Future<List<Movimiento>> getMovimiento() async {
    var uri = Uri.https('https://allsalfe.herokuapp.com/api/movimiento', '/movimiento',
       );

    final response = await http.get(uri, headers:{
      "x-rapidapi-host": "https://allsalfe.herokuapp.com/api/movimiento",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data["feed"]) {
      _temp.add(i["content"]["details"]);
    }

    return Movimiento.movimientoFromSnapshot(_temp);
  }

  static Type movimiento() => Movimiento;
}