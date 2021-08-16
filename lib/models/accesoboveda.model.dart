import 'dart:convert';
import 'package:all_safe/provider/accesoboveda.provider.dart';
import 'package:http/http.dart' as http;


class AccesobovedaApi {
  static Future<List<Accesoboveda>> getUsers() async {
    var uri = Uri.https('https://allsalfe.herokuapp.com/api/accesoboveda', '/accesoboveda',
       );

    final response = await http.get(uri, headers:{
      "x-rapidapi-host": "https://allsalfe.herokuapp.com/api/accesoboveda",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data["feed"]) {
      _temp.add(i["content"]["details"]);
    }

    return Accesoboveda.accesobovedaFromSnapshot(_temp);
  }

  static Type accesoboveda() => Accesoboveda;
}