import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
    Users({
        this.id,
        this.name,
        this.email,
        this.password,
        this.type,
        this.createdAt,
        this.updatedAt,
        this.v,
    });

    String id;
    String name;
    String email;
    String password;
    int type;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        type: json["type"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "password": password,
        "type": type,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };

  static Future<List<Users>> usersFromSnapshot(List temp) {}
}
