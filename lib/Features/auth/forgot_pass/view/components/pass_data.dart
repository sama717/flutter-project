import 'package:flutter/material.dart';
import 'package:authentication/Core/utilities/validation.dart';

class PassWidget extends StatelessWidget {
  const PassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("UPDATE PASSWORD",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.visiblePassword,
            validator: Validation().passValidate,
            obscureText: true,
            decoration: decoration.copyWith(
              label: const Text("New Password"),
              suffixIcon: const Icon(Icons.lock),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.visiblePassword,
            validator: Validation().passValidate,
            obscureText: true,
            decoration: decoration.copyWith(
              label: const Text("Confirm Password"),
              suffixIcon: const Icon(Icons.lock),
            ),
          ),
        ),
      ],
    );
  }
}

InputDecoration decoration = InputDecoration(
  label: const Text("Password"),
  border: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.grey,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(30),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.green,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.red,
      width: 2,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
);
