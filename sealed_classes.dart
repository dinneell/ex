sealed class AuthEvent {}

class AuthLogin extends AuthEvent {
  final String phone;
  AuthLogin(this.phone);
}


//минимизируйте setState лучше использовать BLoC или Cubi