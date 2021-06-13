import 'package:flutter/material.dart';

class Page2View extends StatelessWidget {
  const Page2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Conteúdo"),
          ],
        ),
      ),
    );
  }
}
