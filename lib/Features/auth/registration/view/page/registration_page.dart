import 'package:authentication/Features/auth/registration/view/components/button_widget.dart';
import 'package:authentication/Features/auth/registration/view/components/req_data_widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: ReqDataWidget(),
      bottomNavigationBar: const SizedBox(height: 200,child: ButtonWidget(),),
            )
    );
  }
}