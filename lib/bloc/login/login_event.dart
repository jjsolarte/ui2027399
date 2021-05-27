part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginSignInEvent extends LoginEvent{
  String email, password;
  UserModel userModel;

  LoginSignInEvent({@required this.email,@required this.password,@required this.userModel});

  @override
  List<Object> get props => [email, password, userModel];

}

//Hacer el evento que llama Recuperar contraseña