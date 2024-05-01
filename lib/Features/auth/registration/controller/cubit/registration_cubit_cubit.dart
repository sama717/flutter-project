import 'dart:developer';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'registration_cubit_state.dart';

class RegistrationCubitCubit extends Cubit<RegistrationCubitState> {
  RegistrationCubitCubit() : super(RegistrationCubitInitial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onPressedConfirm() {
    if (formKey.currentState!.validate()) {
      log(firstNameController.text);
      log(lastNameController.text);
      log(mailController.text);
      log(phoneController.text);
      log(passController.text);
    } else {
      log("Invalid Input");
    }
  }
}
