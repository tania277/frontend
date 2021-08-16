import 'package:flutter/material.dart';

//validacionde correo
class LoginFormProvider extends ChangeNotifier{
  GlobalKey <FormState> formKey = new GlobalKey<FormState>();


  String email ='';
  String password = '';

  bool isValidForm(){

    print(formKey.currentState?.validate());

    return formKey.currentState?.validate()?? false;
  }



}