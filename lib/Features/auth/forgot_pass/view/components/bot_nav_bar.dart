import 'package:flutter/material.dart';
import 'package:authentication/Features/auth/forgot_pass/view/page/new_pass.dart';

class BotWidget extends StatelessWidget {
  const BotWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
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
                    MaterialPageRoute(builder: (context) => const NewPassPage()),
                  );

              },
              child: const Text("Confirm"),
            ),
          ),
        ],
      ),
    );
  }
}
