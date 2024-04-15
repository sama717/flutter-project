import 'package:authentication/Features/auth/onboarding/controller/onboarding_controller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class OnBoardingBotNav extends StatelessWidget {
  OnBoardingBotNav({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>.value(
      value: controller,
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =
              context.read<OnboardingControllerCubit>();
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    controller.onSkip(context);
                  },
                  child: const Text("Skip"),
                ),
                const SizedBox(width: 20), // Added SizedBox for spacing
                TextButton(
                  onPressed: controller.onNext,
                  child: const Text("Next"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
