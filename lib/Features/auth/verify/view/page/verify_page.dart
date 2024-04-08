import 'package:authentication/Features/auth/verify/view/components/bot_verify.dart';
import 'package:authentication/Features/auth/verify/view/components/verif_widget.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
      body: VerifyWidget(),
      bottomNavigationBar: SizedBox(height: 200,child: VerifyBotNav(),),
            )
    );
  }
}