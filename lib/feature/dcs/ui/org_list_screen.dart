import 'package:dcs_43_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_frontend/app/ui/components/app_snack_bar.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/org_state/org_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/org_item.dart';

class OrgListScreen extends StatelessWidget {
  const OrgListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Выбор организации'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: BlocConsumer<OrgCubit, OrgState>(
                  builder: (context, state) {
                    if (state.orgList.isNotEmpty) {
                      return ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(10),
                          itemCount: state.orgList.length,
                          itemBuilder: (context, index) {
                            return OrgItem(
                                orgEntity: state.orgList[index]);
                          });
                    }
                    if (state.asyncSnapshot?.connectionState ==
                        ConnectionState.waiting) {
                      return const AppLoader();
                    }
                    //return const SizedBox.shrink();
                    return const Center(
                      child: Text("Ошибка данных!"),
                    );
                  },
                  listener: (context, state) {
                    if (state.asyncSnapshot!.hasError){
                      AppSnackBar.showSnackBarWithError(context, ErrorEntity.fromException(state.asyncSnapshot!.error));
                      Navigator.of(context).pop();
                    }
                  }),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 50),
                  backgroundColor: Colors.blue,
                ),
                child: const Text("ПОИСК")),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}