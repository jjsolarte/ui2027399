class UserModel{

  String _nombre, _appellido, _email, _password;

  UserModel(this._nombre, this._appellido, this._email, this._password);

  get password => _password;

  set password(value) {
    _password = value;
  }

  get email => _email;

  set email(value) {
    _email = value;
  }

  get appellido => _appellido;

  set appellido(value) {
    _appellido = value;
  }

  String get nombre => _nombre;

  set nombre(String value) {
    _nombre = value;
  }
}