import 'package:flutter/material.dart';
import 'package:authentication/Core/utilities/validation.dart';

class LogData extends StatelessWidget {
  const LogData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Phone Number
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.emailAddress,
            validator: Validation().mailValidation,
            decoration: decoration.copyWith(
              label: const Text("Email"),
              hintText: "xxx@gmail.com",
              suffixIcon: const Icon(Icons.mail)),
          ),
          ),
          // Password
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              validator: Validation().passValidate,
              obscureText: true,
              decoration: decoration.copyWith(
                labelText: "Password",
                suffixIcon: const Icon(Icons.lock),
              ),
            ),
          ),
        ],
      ),
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
