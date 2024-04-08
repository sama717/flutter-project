import 'package:authentication/Features/auth/forgot_pass/view/components/bot_nav2.dart';
import 'package:authentication/Features/auth/forgot_pass/view/components/pass_data.dart';
import 'package:flutter/material.dart';

class NewPassPage extends StatelessWidget {
  const NewPassPage({super.key});

  @override
  Widget build(BuildContext context) {
   return const SafeArea(
      child: Scaffold(
      body: PassWidget(),
      bottomNavigationBar: SizedBox(height: 200,child: PassBotNav(),),
            )
    );
  }
}