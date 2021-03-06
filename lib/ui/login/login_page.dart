import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui2027399/bloc/login/login_bloc.dart';
import 'package:ui2027399/models/user_model.dart';
import 'package:ui2027399/ui/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController, passwordController;

  LoginBloc loginBloc;

  UserModel _userModel;

  @override
  void initState() {
    initializer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Iniciar Sesión'),
      ),
      body: Center(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state){
            if(state is LoginFailureState){
              print('Error al iniciar sesión');
            }
            if(state is LoginSucessState){
              print('Bienvenido a nuestra App');
              Navigator.of(context)
                  .push(
                  MaterialPageRoute(builder: (context) => HomePage()));
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Imagen
                    Icon(
                      Icons.person,
                      size: 100,
                    ),

                    //Form
                    Container(width: size.width * 0.8, child: TextField(
                      controller: emailController,
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: size.width * 0.8,
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    
                    InkWell(
                      onTap: doRestartPassword,
                        child: Text('Recuperar contraseña', style: TextStyle(fontWeight: FontWeight.bold),)),
                    SizedBox(
                      height: 20,
                    ),

                    //Btn Ingresar
                    if (state is LoginLoadingState)
                      CircularProgressIndicator(
                        color: Colors.white,
                      )
                    else
                      InkWell(
                        onTap: doLogin,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white.withOpacity(0.8)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'Ingresar',
                              style: TextStyle(
                                  fontSize: size.width * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    
                    
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void doLogin() {
    if (emailController.text != '' && passwordController.text != '') {
      _userModel = UserModel('Nombre defecto', 'Apellido ', emailController.text, passwordController.text);
      loginBloc.add(LoginSignInEvent(email:
          emailController.text, password: passwordController.text, userModel: _userModel));
    } else {
      print('Completar los datos');
    }
  }

  void initializer() {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void doRestartPassword() {
    //Hacer la lógica para restablecer contraseña
  }
}
