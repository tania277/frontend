class LoginModel{
  String email;
  String password;


  LoginModel({
  required this.email,
  required this.password,
  });

  factory LoginModel.fromMapJson(Map<String,dynamic>data)=>LoginModel(
    email: data['email'],
    password: data['password']
 
  );


  Map<String, dynamic> toJson() => {

    "email": email,
    "password": password,
  };
}