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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: azulUdec,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: (screenHeight/9)*4,
            child: Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.fill,),
            decoration: BoxDecoration(
              color: amarilloUdec,
            ),
          ),
          Container(height: 4,color: Colors.black,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 40.0, left: 40.0,top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Title(
                    color: Colors.white, 
                    child: const Text(
                      "Ingresar",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        )
                      )
                    ),
                  Column(
                    children: [
                       Title(
                          color: Colors.white, 
                          child: const Text(
                            "Usuario",
                            style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            )
                          )
                        ),
                      TextField(
                        controller: _emailController,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Column(
                    children: [
                      Title(
                          color: Colors.white, 
                          child: const Text(
                            "Contraseña",
                            style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            )
                          )
                      ),
                      TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  MaterialButton(
                    height: 80,   
                    minWidth: 1000,
                    color: naranjaUdec, // Establecer el color de fondo
                    textColor: Colors.white, // Establecer el color del texto
                    child: const Text(
                      'Aceptar',
                      style: TextStyle(
                        color: Colors.white
                        ),
                      ),
                    onPressed: () {
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      // Aquí puedes agregar la lógica de autenticación y redireccionar al usuario si los datos son válidos.
                      print('Email: $email\nPassword: $password');
                    },
                  ),
                  const Row(
                    children: [
                        Text("Estacionamientos",style: TextStyle(color: Colors.white),),
                        Spacer(),
                        Text(
                          "Fábrica de Software",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
