import 'package:flutter/cupertino.dart';
import '../model/repository/login_repository.dart';

class LoginPresenter extends ChangeNotifier {
  final LoginRepository loginRepository;

  LoginPresenter(this.loginRepository);

  var token;

  void getToken() async {
    token = await loginRepository.getLogin();
    notifyListeners();
  }
}
