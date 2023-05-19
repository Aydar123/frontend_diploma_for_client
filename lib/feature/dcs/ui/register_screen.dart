import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_text_button.dart';
import '../../../app/ui/components/app_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final controllerLogin = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerPassword2 = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RegisterScreen'),
      ),
      body: Form(
        //reverse: true,
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                AppTextField(controller: controllerLogin, labelText: "Логин"),
                const SizedBox(height: 16),
                AppTextField(controller: controllerEmail, labelText: "Email"),
                const SizedBox(height: 16),
                AppTextField(
                    obscureText: true,
                    controller: controllerPassword,
                    labelText: "Пароль"),
                const SizedBox(height: 16),
                AppTextField(
                    obscureText: true,
                    controller: controllerPassword2,
                    labelText: "Повторите пароль"),
                const SizedBox(height: 16),
                AppTextButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() != true) return;

                    if (controllerPassword.text != controllerPassword2.text) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Пароли не совпадают!")));
                    } else {
                      _onTabToSignUp(context.read<AuthCubit>());
                      Navigator.of(context).pop();
                    }
                  },
                  text: "Зарегистрироваться",
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTabToSignUp(AuthCubit authCubit) => authCubit.signUp(
      username: controllerLogin.text,
      email: controllerEmail.text,
      password: controllerPassword.text);
}
