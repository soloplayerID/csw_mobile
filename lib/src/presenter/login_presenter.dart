import '../resources/user_api.dart';

import '../models/login_model.dart';
import '../resources/session.dart';
import '../state/login_state.dart';
import 'package:get_storage/get_storage.dart';
import '../../helper/getStorage.dart' as constants;

abstract class LoginPresenterAbstract {
  set view(LoginState view) {}
  void loginClicked() {}
}

class LoginPresenter implements LoginPresenterAbstract {
  final LoginModel _loginModel = LoginModel();
  late LoginState _loginState;

  @override
  void loginClicked() {
    _loginModel.isloading = true;
    _loginState.refreshData(_loginModel);
    UserApi.connectToApi(
            _loginModel.username.text.trim(), _loginModel.password.text.trim())
        .then((value) async {
      await GetStorage().write(constants.idUser, value.id.toString());
      await GetStorage().write(constants.email, value.email);
      await GetStorage().write(constants.namaUser, value.name);
      Session.setId(value.id.toString());
      Session.setName(value.name.toString());
      Session.setEmail(value.email.toString());
      _loginModel.isloading = false;
      _loginState.refreshData(_loginModel);
      _loginState.onSuccess("yey, Berhasil :D");
    }).catchError((onError) {
      _loginModel.isloading = false;
      _loginState.refreshData(_loginModel);
      _loginState.onError(onError.toString());
    });
  }

  @override
  set view(LoginState view) {
    _loginState = view;
    _loginState.refreshData(_loginModel);
  }
}
