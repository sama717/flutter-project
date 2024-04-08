import 'package:authentication/Core/utilities/validation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReqDataWidget extends StatelessWidget {
  ReqDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //First Name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.name,
            validator: Validation().nameValidate,
            decoration: decoration,
          ),
        ),
        //Last Name
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.name,
            validator: Validation().nameValidate,
            decoration: decoration.copyWith(
              label: const Text("Last Name")),
          ),
        ),
        //Email
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.emailAddress,
            validator: Validation().mailValidation,
            decoration: decoration.copyWith(
              label: const Text("Email Address"),
              hintText: "xxx@gmail.com",
              suffixIcon: const Icon(Icons.mail)),
          ),
        ),
        //Phone Number
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.phone,
            validator: Validation().phoneValidation,
            decoration: decoration.copyWith(
              label: const Text("Phone Number"),
              hintText: "+20 XXX XXX XXXX",
              suffixIcon: const Icon(Icons.phone)),
          ),
        ),
        //Password
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: TextEditingController(),
            keyboardType: TextInputType.visiblePassword,
            validator: Validation().passValidate,
            obscureText: true,
            decoration: decoration.copyWith(
              label: const Text("Password"),
              suffixIcon: const Icon(Icons.lock),
              ),
          ),
        ),
      ],
    );
  }
  InputDecoration decoration =  InputDecoration(
              label: const Text("First Name"),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 2
                  ),
                  borderRadius: BorderRadius.circular(30)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 2
                  ),
                  borderRadius: BorderRadius.circular(20)
              )
            );
}
