import 'package:auth_jwt_flutter_app/pages/authorized_page.dart/authorized_page.dart';
import 'package:auth_jwt_flutter_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/auth': (_) => const AuthorizedPage(),
      },
    );
  }
}
