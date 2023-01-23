import 'package:auth_jwt_flutter_app/pages/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = HomePageController();
  @override
  void initState() {
    if (!controller.isExpired) {
      Navigator.of(context).pushNamed('/auth');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailEC,
              decoration: const InputDecoration(label: Text('Email')),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: controller.passwordEC,
              decoration: const InputDecoration(
                label: Text('Password'),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await controller.auth();

                if (!controller.isExpired) {
                  if (!mounted) return;
                  Navigator.of(context).pushNamed('/auth');
                }
              },
              child: const Text('Enter'),
            )
          ],
        ),
      ),
    );
  }
}
