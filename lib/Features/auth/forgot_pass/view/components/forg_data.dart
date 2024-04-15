import 'package:flutter/material.dart';
import 'package:authentication/Core/utilities/validation.dart';

class ForgetDataWidget extends StatelessWidget {
  const ForgetDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "CONFIRMATION",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.emailAddress,
            validator: Validation().mailValidation,
            decoration: decoration.copyWith(
              labelText: "Email Address",
              hintText: "xxx@gmail.com",
              suffixIcon: const Icon(Icons.mail),
            ),
          ),
        ),
      ],
    );
  }
}

InputDecoration decoration = InputDecoration(
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
