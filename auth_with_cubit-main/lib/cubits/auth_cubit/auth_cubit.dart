import 'package:auth_with_cubit/cubits/auth_cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  Future<void> authentication({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoadingState());
      await Future.delayed(Duration(seconds: 2), () {});
      emit(AuthSuccessState());
    } catch (e) {
      emit(AuthFailureState(errorMessage: e.toString()));
    }
  }
}
