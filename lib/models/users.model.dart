import 'dart:convert';
import 'package:all_safe/provider/user.provider.dart';
import 'package:http/http.dart' as http;


class UsersApi {
  static Future<List<Users>> getUsers() async {
    var uri = Uri.https('https://allsalfe.herokuapp.com/api/users', '/users',
       );

    final response = await http.get(uri, headers:{
      "x-rapidapi-host": "https://allsalfe.herokuapp.com/api/users",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data["feed"]) {
      _temp.add(i["content"]["details"]);
    }

    return Users.usersFromSnapshot(_temp);
  }

  static Type users() => Users;
}