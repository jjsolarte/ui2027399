part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginLoadingState extends LoginState{
  final String msg;

  LoginLoadingState({this.msg});

  @override
  List<Object> get props => [msg];
}

class LoginSucessState extends LoginState{
  final bool res;
  final UserModel userModel;

  LoginSucessState({@required this.res, this.userModel});

  @override
  List<Object> get props => [res, userModel];

}

class LoginFailureState extends LoginState{
  final bool res;

  LoginFailureState({@required this.res});

  @override
  List<Object> get props => [res];

}

//Hacer el state que retorna de Recuperar contraseña
