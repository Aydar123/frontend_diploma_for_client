import 'package:dcs_43_frontend/app/di/init_di.dart';
import 'package:dcs_43_frontend/app/domain/app_builder.dart';
import 'package:dcs_43_frontend/app/ui/root_screen.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/detail_data_state/detail_data_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/org_state/org_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainAppBuilder implements AppBuilder{

  @override
  Widget buildApp() {
    return const _GlobalProviders(
      child: MaterialApp(
        home: RootScreen()
      ),
    );
  }
}

//На данный момент токены хранятся в state. State стерилизуется и с
// помощью HydrateCubit они сохраняются в защищённом и зашифрованном
// хранилище hive.

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      //Глобальный кубит
      BlocProvider(
          create: (context) => locator.get<AuthCubit>(),
      ),
      //Тоже глобально оказывается
      BlocProvider(
        create: (context) => OrgCubit(locator.get<AuthRepo>(), locator.get<AuthCubit>())..fetchAllOrg(),
      ),
      // BlocProvider(
      //   create: (context) => DetailDataCubit(locator.get<AuthRepo>(), locator.get<AuthCubit>(), )..getUniqueFieldsCurOrg(),
      // ),

    ], child: child);
  }
}
