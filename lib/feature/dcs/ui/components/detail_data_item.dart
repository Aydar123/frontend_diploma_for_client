import 'package:dcs_43_frontend/app/ui/components/app_text_button.dart';
import 'package:dcs_43_frontend/app/ui/components/app_text_field.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:flutter/material.dart';

class DetailDataItem extends StatelessWidget {
  const DetailDataItem({super.key, required this.orgFieldEntity});

  //Использую FieldEntity, потому что в серверной части запрос
  //строиться отностильно таблицы FieldEntity
  final FieldEntity orgFieldEntity;
  //final OrgEntity orgEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      //color: Theme.of(context).colorScheme.surfaceVariant,
      color: Colors.white,
      child: Column(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 200,
            height: 50,
            child: Center(
              child: Text(
                orgFieldEntity.name,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),

          const SizedBox(
            width: 350,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Введите данные',
              ),
              // controller: ,
            ),
          ),

          ElevatedButton(
            onPressed: () {
              //context.read<DetailDataCubit>().insertData(orgEntity.id.toString(), orgFieldEntity.id.toString(), v1);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              fixedSize: const Size(250, 10),
            ),
            child: const Text("Сохранить"),
          ),

        ],
      ),
    );
  }
}

class _InsertData extends StatefulWidget {
  const _InsertData({Key? key}) : super(key: key);

  @override
  State<_InsertData> createState() => __InsertDataDialogState();
}

class __InsertDataDialogState extends State<_InsertData> {
  final valueController = TextEditingController();

  @override
  void dispose() {
    valueController.dispose();
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
                  controller: valueController,
                  labelText: "Введие данные"),
              const SizedBox(height: 16),
              AppTextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    //context.read<DetailDataCubit>().insertData(orgId, fieldId, value: valueController.text);
                  },
                  text: "Применить"),
            ],
          ),
        )
      ],
    );
  }
}
