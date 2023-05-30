import 'package:flutter/material.dart';
import 'package:frontend_app/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: azulUdec,
      body: Column(
        children: [
          Image.asset("assets/images/login_image.png"),
          Container(height: 4,color: Colors.black,),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 40.0, left: 40.0,top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Title(
                    color: Colors.white, 
                    child: Text(
                      "Ingresar",
                      style: TextStyle(
                        color: Colors.white))),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    child: Text('Aceptar'),
                    onPressed: () {
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      // Aquí puedes agregar la lógica de autenticación y redireccionar al usuario si los datos son válidos.
                      print('Email: $email\nPassword: $password');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
