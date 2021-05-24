import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

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
          yield LoginSucessState(res: true);
        }else{
          yield LoginFailureState(res: false);
        }
      }else{
        yield LoginFailureState(res: false);
      }
    }
    else
      LoginInitial();
  }
}
