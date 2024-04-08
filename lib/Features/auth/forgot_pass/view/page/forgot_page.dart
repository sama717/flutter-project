import 'package:authentication/Features/auth/forgot_pass/view/components/bot_nav_bar.dart';
import 'package:authentication/Features/auth/forgot_pass/view/components/forg_data.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
      body: ForgetDataWidget(),
      bottomNavigationBar: SizedBox(height: 200,child: BotWidget(),),
            )
    );
  }
}