import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1View extends StatelessWidget {
  const Page1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Navegação"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
