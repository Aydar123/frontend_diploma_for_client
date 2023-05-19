import 'package:dcs_43_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:dcs_43_frontend/feature/dcs/ui/detail_data_screen.dart';
import 'package:flutter/material.dart';

class OrgItem extends StatelessWidget {
  const OrgItem({super.key, required this.orgEntity});

  final OrgEntity orgEntity;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Theme.of(context).colorScheme.surfaceVariant,
      // color: Colors.white,
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: Center(
              child: Text(
                orgEntity.fullName.toString(),
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Переход для заполнения данных
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailDataScreen(id: orgEntity.id.toString())));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text("Выбрать"),
          ),
        ],
      ),
    );
  }
}
