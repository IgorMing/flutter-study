import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/src/features/login/login.model.dart';

class LoginStateNotifier extends StateNotifier<LoginModel> {
  LoginStateNotifier() : super(LoginModel());

  void changeUsername(String username) => state.username = username;
  void changePassword(String password) => state.password = password;
  void submit() {
    print('${state.username} ${state.password}');
  }
}

final StateNotifierProvider<LoginStateNotifier, LoginModel> loginProvider =
    StateNotifierProvider(((ref) => LoginStateNotifier()));
