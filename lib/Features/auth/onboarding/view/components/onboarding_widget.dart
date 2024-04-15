import 'package:authentication/Features/auth/onboarding/controller/onboarding_controller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class OnBoardingWidget extends StatelessWidget {
  OnBoardingWidget({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocProvider<OnboardingControllerCubit>.value(value: controller,
            child: BlocBuilder<OnboardingControllerCubit,
                OnboardingControllerState>(
              builder: (context, state) {
                OnboardingControllerCubit controller =
                    context.read<OnboardingControllerCubit>();

                return PageView(
                  controller: controller.pageController,
                  children: List.generate(
                    controller.data.length,
                    (index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                            CrossAxisAlignment.center, // Added this line
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Image.asset(controller.data[index].image),
                          ),
                          Text(
                            controller.data[index].title,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              controller.data[index].subtitle,
                              textAlign: TextAlign.center, // Centering text
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
