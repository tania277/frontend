class UsersModel{
  String ? id;
  String name;
  String email;
  String password;
  int ? type;
  DateTime? createdAt;
  DateTime? updatedAt;

  UsersModel({
  this.id,
  required this.name,
  required this.email,
  required this.password,
  this.type,
  this.createdAt,
  this.updatedAt
  });

  factory UsersModel.fromMapJson(Map<String,dynamic>data)=>UsersModel(
    id: data['_id'],
    name: data['name'],
    email: data['email'],
    password: data['password'],
    type: data['type'],
    createdAt: DateTime.parse(data['createdAt']),
    updatedAt: DateTime.parse(data['updatedAt'])
  );


  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
    "type": type
  };
}