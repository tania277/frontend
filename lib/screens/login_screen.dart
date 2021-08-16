import 'package:all_safe/providers/login_form_provider.dart';
import 'package:all_safe/screens/screens.dart';
import 'package:all_safe/ui/input_decorations.dart';
import 'package:all_safe/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column (
            children: [

              SizedBox(height: 250),

              CardContainer(
                child: Column(
                  children: [

                    SizedBox(height: 10,),
                    Text('Login', style: Theme.of(context).textTheme.headline4),
                    SizedBox(height: 20),

                    ChangeNotifierProvider(
                      create: (_)=> LoginFormProvider(),
                      child: _LoginForm()
                      )

                  ],
                ),
              ),

              
            ],
          ),
        )
      )
    );
  }
}

class _LoginForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,


        child: Column(
          children: [

            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'example@gmail.com',
                labelText: 'Correo electronico',
                prefixIcon: Icons.alternate_email_sharp,
              ),
              onChanged: (value)=> loginForm.email = value,
              validator: (value){
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp  = new RegExp(pattern);

                return regExp.hasMatch(value ?? '')
                  ? null
                  : 'El valor ingresado no tiene el formato de correo';
              },
              
            ),

            SizedBox(height: 30),

            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: '',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline_sharp
              ),
              onChanged: (value)=> loginForm.password = value,
              validator: (value){
                
                if (value!= null && value.length>=6) return null;
                return 'La contraseña lleva más de 6 caracteres';

                
              },

            ),

            SizedBox(height: 30),

            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.teal,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text('Ingresar',
                style: TextStyle(color: Colors.white)
                ),
              ),
              onPressed: (){
                
                if (!loginForm.isValidForm()) return;

                Navigator.pushReplacementNamed(context, 'paginas');
                
              },
            )
         
          ],
        ),
      ),
    );
  }
}

