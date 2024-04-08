import 'package:authentication/Features/auth/login/view/page/login_page.dart';
import 'package:flutter/material.dart';

class VerifyBotNav extends StatelessWidget {
  const VerifyBotNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
            },
            child: const Text("Confirm"),
          ),
        ),
      ],
    );
  }
}
