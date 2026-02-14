class AuthStates {}

class AuthInitialState extends AuthStates {}

class AuthLoadingState extends AuthStates {}

class AuthSuccessState extends AuthStates {}

class AuthFailureState extends AuthStates {
  final String errorMessage;
  AuthFailureState({required this.errorMessage});
}
