part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginSignInEvent extends LoginEvent{
  String email, password;

  LoginSignInEvent({@required this.email,@required this.password});

  @override
  List<Object> get props => [email, password];

}