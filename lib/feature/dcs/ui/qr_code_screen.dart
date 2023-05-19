import 'package:dcs_43_frontend/feature/dcs/domain/entities/user_entity/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  //final UserEntity userEntity;

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();

}
class _QrCodeScreenState extends State<QrCodeScreen> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR GENERATOR'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 300,
                embeddedImageStyle: QrEmbeddedImageStyle(
                    size: const Size(80,80)
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter URL'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: const Text('GENERATE QR')),

            ],
          ),
        ),
      ),
    );
  }
}
