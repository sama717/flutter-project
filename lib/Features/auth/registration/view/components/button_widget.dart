import 'package:authentication/Features/auth/login/view/page/login_page.dart';
import 'package:authentication/Features/auth/registration/controller/cubit/registration_cubit_cubit.dart';
import 'package:authentication/Features/auth/verify/view/page/verify_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required RegistrationCubitCubit controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubitCubit(),
      child: BlocBuilder<RegistrationCubitCubit, RegistrationCubitState>(
        builder: (context, state) {
          RegistrationCubitCubit controller = context.read<RegistrationCubitCubit>();

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FilledButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueAccent)),
                    onPressed: () {
                      controller.onPressedConfirm();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerificationPage()),
                      );
                    },
                    child: const Text("Confirm")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
