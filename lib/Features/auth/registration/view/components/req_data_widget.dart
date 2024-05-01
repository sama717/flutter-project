import 'package:authentication/Core/utilities/validation.dart';
import 'package:authentication/Features/auth/registration/controller/cubit/registration_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ReqDataWidget extends StatelessWidget {
  ReqDataWidget({super.key, required this.controller});

  final RegistrationCubitCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegistrationCubitCubit, RegistrationCubitState>(
        builder: (context, state) {
          RegistrationCubitCubit controller =
              context.read<RegistrationCubitCubit>();

          return Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "REGISTRATION",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                //First Name
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.firstNameController,
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
                    controller: controller.lastNameController,
                    keyboardType: TextInputType.name,
                    validator: Validation().nameValidate,
                    decoration:
                        decoration.copyWith(label: const Text("Last Name")),
                  ),
                ),
                //Email
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.mailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: Validation().mailValidation,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(
  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
))],
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
                    controller: controller.phoneController,
                    keyboardType: TextInputType.phone,
                    validator: Validation().phoneValidation,
                    inputFormatters: [FilteringTextInputFormatter.allow(RegExp(
  r'^\+(?:[0-9] ?){6,14}[0-9]$',
))],
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
                    controller: controller.passController,
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
            ),
          );
        },
      ),
    );
  }

  InputDecoration decoration = InputDecoration(
      label: const Text("First Name"),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(30)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(20)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(20)));
}
