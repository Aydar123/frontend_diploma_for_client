import 'package:dcs_43_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/components/auth_builder.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/home_screen.dart';
import 'package:dcs_43_frontend/feature/main/ui/main_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBuilder(
        isNotAuthorized: (context) => const HomeScreen(),
        isWaiting: (context) => const AppLoader(),
        isAuthorized: (context, value, child) => MainScreen(userEntity: value)
    );
  }

}
