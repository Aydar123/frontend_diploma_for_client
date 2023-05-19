import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/user_entity/user_entity.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/org_list_screen.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userEntity}) : super(key: key);

  final UserEntity userEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Главное меню'),
        actions: [
          // IconButton(
          //     onPressed: () => context.read<AuthCubit>().getProfile(),
          //     icon: const Icon(Icons.account_box)),
          IconButton(
              onPressed: () => context.read<AuthCubit>().logOut(),
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UserScreen()));
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(double.maxFinite, 40))),
                    child: const Text("Личный кабинет")),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OrgListScreen()));
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(double.maxFinite, 40))),
                    child: const Text("Выбор Организации"))
              ],
            ),
          ),
        ),
      ),

    );
  }
}
