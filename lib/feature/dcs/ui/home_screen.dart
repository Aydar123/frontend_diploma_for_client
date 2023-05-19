import 'package:dcs_43_frontend/feature/dcs/ui/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Приветствие'),
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ElevatedButton(
                //     onPressed: () {},
                //     style: ButtonStyle(
                //         fixedSize: MaterialStateProperty.all<Size>(
                //             const Size(double.maxFinite, 40))),
                //     child: const Text("Организация")),
                // const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(double.maxFinite, 40))),
                    child: const Text("Клиент")),
              ],
            ),
          ),
        ),
      ),
    );
  }



}
