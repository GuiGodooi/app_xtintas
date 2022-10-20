import 'package:flutter/cupertino.dart';

import '../Model/user.dart';
import '../model/repository/register_repository.dart';

class SignUpPresenter extends ChangeNotifier {
  late User user;
  late final SignUpRepository registerRepository;

  fetchData(String name, String email, String password) async {
    user =
        (await registerRepository.postRegister(name, email, password)) as User;
    notifyListeners();
  }
}
