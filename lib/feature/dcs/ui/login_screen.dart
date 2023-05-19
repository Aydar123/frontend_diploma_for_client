import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/ui/components/app_text_button.dart';
import '../../../app/ui/components/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LoginScreen'),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTextField(controller: controllerLogin, labelText: "Логин"),
                const SizedBox(height: 16),
                AppTextField(
                    obscureText: true,
                    controller: controllerPassword,
                    labelText: "Пароль"),
                const SizedBox(height: 16),
                AppTextButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      _onTabToSignIn(context.read<AuthCubit>());
                      Navigator.of(context).pop();
                    }
                  },
                  text: "Войти",
                ),
                const SizedBox(height: 16),
                AppTextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterScreen()));
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

  void _onTabToSignIn(AuthCubit authCubit) => authCubit.signIn(
      username: controllerLogin.text, password: controllerPassword.text);
}
