import 'package:authentication/Features/auth/onboarding/model/onboarding_model.dart';
import 'package:authentication/Features/auth/registration/view/page/registration_page.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  PageController pageController = PageController();

  void onNext() {
    pageController.nextPage(
        duration: const Duration(seconds: 2),
        curve: Curves.fastEaseInToSlowEaseOut);
  }

  void onSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding', true);
    // ignore: use_build_context_synchronously
    Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => const RegistrationPage()),
    );
  }

  List data = [
    OnBoardingModel(
        image: 'assets/images/Wallet-2.png',
        title: "Welcome to Ma7fa6'ti",
        subtitle: ''),
    OnBoardingModel(
        image: 'assets/images/account.png',
        title: 'Manage all your accounts',
        subtitle: 'Make as many accounts\nto manage each section'),
    OnBoardingModel(
        image: 'assets/images/image311.png',
        title: 'Keep track of your money',
        subtitle: 'Deposit your money\nand see your spending and income'),
  ];
}
