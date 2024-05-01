import 'package:authentication/Features/auth/forgot_pass/view/page/forgot_page.dart';
import 'package:authentication/Features/dashboard/dashboard/view/page/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:authentication/Features/auth/registration/view/page/registration_page.dart';

class BotNavWidget extends StatelessWidget {
  const BotNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent)),
            onPressed: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DashboardPage()),
              );
            },
            child: const Text("Login"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgotPage()),
              );
            },
            child: const Text(
              "Forgot password?",
              style: TextStyle(
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blueAccent,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RegistrationPage()),
              );
            },
            child: const Text(
              "Create a new account",
              style: TextStyle(
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blueAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
