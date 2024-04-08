import 'package:authentication/Features/auth/login/view/components/bot_nav.dart';
import 'package:authentication/Features/auth/login/view/components/log_data.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: LogData(),
      bottomNavigationBar: SizedBox(child: BotNavWidget(), height: 200,),
    ));
  }
}
