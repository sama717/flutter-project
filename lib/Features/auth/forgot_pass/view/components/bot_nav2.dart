import 'package:authentication/Features/auth/verify/view/page/verify_page.dart';
import 'package:flutter/material.dart';

class PassBotNav extends StatelessWidget {
  const PassBotNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
                MaterialPageRoute(
                    builder: (context) => const VerificationPage()),
              );
            },
            child: const Text("Confirm"),
          ),
        ),
      ],
    );
  }
}
