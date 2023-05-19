import 'package:dcs_43_frontend/app/di/init_di.dart';
import 'package:dcs_43_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_frontend/app/ui/components/app_snack_bar.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/detail_data_state/detail_data_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/qr_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/detail_data_item.dart';

class DetailDataScreen extends StatelessWidget {
  const DetailDataScreen({Key? key, required this.id}) : super(key: key);

  //Organization Id
  final String id;

  @override
  Widget build(BuildContext context) {
    //Локальный BlocProvider
    return BlocProvider(
      create: (context) =>
          DetailDataCubit(locator.get<AuthRepo>(), locator.get<AuthCubit>(), id)
            ..getUniqueFieldsCurOrg(),
      child: const _DetailDataView(),
    );
  }
}

class _DetailDataView extends StatelessWidget {
  const _DetailDataView();

  //final OrgEntity orgEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Передача данных'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: BlocConsumer<DetailDataCubit, DetailDataState>(
                  builder: (context, state) {
                if (state.orgFieldList.isNotEmpty) {
                  return ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(10),
                      itemCount: state.orgFieldList.length,
                      itemBuilder: (context, index) {
                        return DetailDataItem(
                            orgFieldEntity: state.orgFieldList[index]);
                      });
                }
                if (state.asyncSnapshot?.connectionState ==
                    ConnectionState.waiting) {
                  return const AppLoader();
                }
                return const Center(
                  child: Text("Что-то пошло не так!"),
                );
              }, listener: (context, state) {
                if (state.asyncSnapshot!.hasError) {
                  AppSnackBar.showSnackBarWithError(context,
                      ErrorEntity.fromException(state.asyncSnapshot!.error));
                  Navigator.of(context).pop();
                }
              }),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  //Переход на форму с QR-кодом
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QrCodeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 50),
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Сгенерировать QR-код")),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
