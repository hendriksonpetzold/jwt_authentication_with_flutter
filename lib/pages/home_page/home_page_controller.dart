import 'dart:developer';

import 'package:auth_jwt_flutter_app/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class HomePageController {
  AuthRepository repository = AuthRepository();
  TextEditingController emailEC = TextEditingController();
  TextEditingController passwordEC = TextEditingController();

  bool isExpired = true;

  Future<void> auth() async {
    String? accessToken = await repository.auth(emailEC.text, passwordEC.text);
    try {
      isExpired = JwtDecoder.isExpired(accessToken);
    } catch (e) {
      log('invalid token');
    }
  }
}
