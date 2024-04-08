import 'package:authentication/Core/utilities/validation.dart';
import 'package:flutter/material.dart';

class VerifyWidget extends StatelessWidget {
  const VerifyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Verification Pin"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) => _buildPinField()),
        ),
      ],
    );
  }

  Widget _buildPinField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 50, // Adjust width to fit one number
        child: TextFormField(
          maxLength: 1,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: TextInputType.number,
          validator: Validation().pinValidation,
          decoration: decoration.copyWith(
            label: const Text(""),
          ),
        ),
      ),
    );
  }
}

InputDecoration decoration = InputDecoration(
  label: const Text("First Name"),
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
