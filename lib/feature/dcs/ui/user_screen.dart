import 'package:dcs_43_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_frontend/app/ui/app_loader.dart';
import 'package:dcs_43_frontend/app/ui/components/app_snack_bar.dart';
import 'package:dcs_43_frontend/app/ui/components/app_text_button.dart';
import 'package:dcs_43_frontend/app/ui/components/app_text_field.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Personal Account'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AuthCubit>().logOut();
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            authorized: (userEntity) {
              if (userEntity.userState?.hasData == true) {
                AppSnackBar.showSnackBarWithMessage(
                    context, userEntity.userState?.data);
              }
              if (userEntity.userState?.hasError == true) {
                AppSnackBar.showSnackBarWithError(context,
                    ErrorEntity.fromException(userEntity.userState?.error));
              }
            },
          );
        },
        builder: (context, state) {
          final userEntity = state.whenOrNull(
            authorized: (userEntity) => userEntity,
          );
          if (userEntity?.userState?.connectionState ==
              ConnectionState.waiting) {
            return const AppLoader();
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child:
                        Text(userEntity?.username.split("").first ?? "Photo"),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      // TextField(
                      //   decoration: InputDecoration(hintText: "Фамилия"),
                      //   textInputAction: TextInputAction.next,
                      // ),
                      Text(userEntity?.username ?? ""),
                      Text(userEntity?.email ?? ""),
                      //Text(userEntity?.surname ?? "def"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const _UpdatePassword());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text("Изменить пароль")),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const _UpdateProfile());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text("Обновить данные")),
                ],
              ),
            ]),
          );
        },
      ),
    );
  }
}

class _UpdateProfile extends StatefulWidget {
  const _UpdateProfile({Key? key}) : super(key: key);

  @override
  State<_UpdateProfile> createState() => __UpdateProfileDialogState();
}

class __UpdateProfileDialogState extends State<_UpdateProfile> {

  final List<String> items = ["Муж", "Жен"];
  String selectedItem = "-";

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final surnameController = TextEditingController();
  final nameController = TextEditingController();
  final otchestvoController = TextEditingController();
  final genderController = TextEditingController();
  final dobController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final seriesController = TextEditingController();
  final numberController = TextEditingController();
  final dateOfIssueController = TextEditingController();
  final codePodrazdelController = TextEditingController();
  final issuedByController = TextEditingController();
  final snilsController = TextEditingController();
  final innController = TextEditingController();
  final addressRegController = TextEditingController();
  final cityRegController = TextEditingController();
  final addressActualController = TextEditingController();
  final cityActualController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    surnameController.dispose();
    nameController.dispose();
    otchestvoController.dispose();
    genderController.dispose();
    dobController.dispose();
    phoneNumberController.dispose();
    seriesController.dispose();
    numberController.dispose();
    dateOfIssueController.dispose();
    codePodrazdelController.dispose();
    issuedByController.dispose();
    snilsController.dispose();
    innController.dispose();
    addressRegController.dispose();
    cityRegController.dispose();
    addressActualController.dispose();
    cityActualController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              AppTextField(
                  controller: usernameController, labelText: "username"),
              const SizedBox(height: 16),
              AppTextField(controller: emailController, labelText: "email"),
              const SizedBox(height: 16),
              AppTextField(controller: surnameController, labelText: "Фамилия"),
              const SizedBox(height: 16),
              AppTextField(controller: nameController, labelText: "Имя"),
              const SizedBox(height: 16),
              AppTextField(controller: otchestvoController, labelText: "Отчество"),
              const SizedBox(height: 16),
              AppTextField(controller: genderController, labelText: "Пол"),
              const SizedBox(height: 16),
              TextField(
                controller: dobController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today_rounded),
                    labelText: "Дата Рождения"),
                onTap: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                },
              ),
              const SizedBox(height: 16),
              AppTextField(
                  controller: phoneNumberController,
                  labelText: "Номер телефона"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: seriesController, labelText: "Серия паспорта"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: numberController, labelText: "Номер паспорта"),
              const SizedBox(height: 16),
              TextField(
                controller: dateOfIssueController,
                decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today_rounded),
                    labelText: "Дата выдачи"),
                onTap: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                },
              ),
              AppTextField(
                  controller: codePodrazdelController,
                  labelText: "Код подразделения"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: issuedByController, labelText: "Кем выдан"),
              const SizedBox(height: 16),
              AppTextField(controller: snilsController, labelText: "СНИЛС"),
              const SizedBox(height: 16),
              AppTextField(controller: innController, labelText: "ИНН"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: addressRegController,
                  labelText: "Адрес регистрации"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: cityRegController,
                  labelText: "Город регистрации"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: addressActualController,
                  labelText: "Адрес фактический"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: cityActualController,
                  labelText: "Город фактический"),
              const SizedBox(height: 16),
              AppTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<AuthCubit>().updateProfile(
                        email: emailController.text,
                        username: usernameController.text,
                        surname: surnameController.text,
                        name: nameController.text,
                        otchestvo: otchestvoController.text,
                        gender: genderController.text,
                        //dob: dob,
                        phoneNumber: phoneNumberController.text,
                        series: seriesController.text,
                        number: numberController.text,
                        //dateOfIssue: dateOfIssueController.text,
                        codePodrazdel: codePodrazdelController.text,
                        issuedBy: issuedByController.text,
                        snils: snilsController.text,
                        inn: innController.text,
                        addressReg: addressRegController.text,
                        cityReg: cityRegController.text,
                        addressActual: addressActualController.text,
                        cityActual: cityActualController.text
                    );
                  },
                  text: "Применить"),
            ],
          ),
        )
      ],
    );
  }
}

class _UpdatePassword extends StatefulWidget {
  const _UpdatePassword({Key? key}) : super(key: key);

  @override
  State<_UpdatePassword> createState() => __UpdatePasswordDialogState();
}

class __UpdatePasswordDialogState extends State<_UpdatePassword> {
  final newPasswordController = TextEditingController();
  final oldPasswordController = TextEditingController();

  @override
  void dispose() {
    newPasswordController.dispose();
    oldPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              AppTextField(
                  controller: oldPasswordController,
                  labelText: "Старый пароль"),
              const SizedBox(height: 16),
              AppTextField(
                  controller: newPasswordController, labelText: "Новый пароль"),
              const SizedBox(height: 16),
              AppTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<AuthCubit>().updatePassword(
                          oldPassword: oldPasswordController.text,
                          newPassword: newPasswordController.text,
                        );
                  },
                  text: "Применить"),
            ],
          ),
        )
      ],
    );
  }
}







// DropdownButton(
// value: selectedItem,
//
// icon: const Icon(Icons.keyboard_arrow_down),
//
// items: items.map((String items) {
// return DropdownMenuItem(
// value: items,
// child: Text(items),
// );
// }).toList(),
//
// onChanged: (String? newValue) {
// setState(() {
// selectedItem = newValue!;
// });
// },
// )
