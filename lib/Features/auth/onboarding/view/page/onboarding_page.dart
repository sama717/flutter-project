import 'package:authentication/Features/auth/onboarding/controller/onboarding_controller_cubit.dart';
import 'package:authentication/Features/auth/onboarding/view/components/onboard_bottom.dart';
import 'package:authentication/Features/auth/onboarding/view/components/onboarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>(
      create: (context) => OnboardingControllerCubit(),
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =
              context.read<OnboardingControllerCubit>();
          return SafeArea(
            child: Scaffold(
              body: OnBoardingWidget(controller: controller,),
              bottomNavigationBar: OnBoardingBotNav(controller: controller,),
            ),
          );
        },
      ),
    );
  }
}
