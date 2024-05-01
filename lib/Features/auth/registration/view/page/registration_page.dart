import 'package:authentication/Features/auth/registration/controller/cubit/registration_cubit_cubit.dart';
import 'package:authentication/Features/auth/registration/view/components/button_widget.dart';
import 'package:authentication/Features/auth/registration/view/components/req_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => RegistrationCubitCubit(),
        child: BlocBuilder<RegistrationCubitCubit, RegistrationCubitState>(
          builder: (context, state) {
            RegistrationCubitCubit controller = context.read<RegistrationCubitCubit>();
            return Scaffold(
              body: ReqDataWidget(
                controller: controller,
              ),
              bottomNavigationBar: SizedBox(
                height: 200,
                child: ButtonWidget(
                  controller: controller,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
