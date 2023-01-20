import 'package:auth_jwt_flutter_app/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';

class HomePageController {
  AuthRepository repository = AuthRepository();
  TextEditingController emailEC = TextEditingController();
  TextEditingController passwordEC = TextEditingController();
  String? accessToken;

  Future<void> auth() async {
    accessToken = await repository.auth(emailEC.text, passwordEC.text);
  }
}
