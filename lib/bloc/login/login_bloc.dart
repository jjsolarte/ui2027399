import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:ui2027399/models/user_model.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if(event is LoginSignInEvent){
      if(event.email == 'jsolarte@misena.edu.co'){
        if(event.password == '1234567'){

          //Creamos un usuario local que tiene la información de la
          //petición del usuario en la base de datos
          final UserModel userLocal = UserModel('Nombre defecto',
              'Apellido ', 'jsolarte@misena.edu.co', '1234657');

          if(event.userModel == userLocal){
            yield LoginSucessState(res: true);
          }


          yield LoginSucessState(res: true);
        }else{
          yield LoginFailureState(res: false);
        }
      }else{
        yield LoginFailureState(res: false);
      }
    }
    // else if(event is LoginRecoveryPassword){}
    else
      LoginInitial();
  }
}
