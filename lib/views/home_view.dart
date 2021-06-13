import 'package:flutter/material.dart';
import 'package:flutter_get_x_exemple/views/page1_view.dart';
import 'package:flutter_get_x_exemple/views/page2_view.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX exemple"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Navegação"),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  Page1View(),
                );
              },
              child: Text("Vai!"),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => Get.rawSnackbar(
                message: "Snack",
                messageText: Text("Esta é uma snackbar"),
                snackPosition: SnackPosition.BOTTOM,
              ),
              child: Text("Raw Snackbar"),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => Get.snackbar(
                "Snack",
                "Esta é uma snackbar",
                snackPosition: SnackPosition.BOTTOM,
              ),
              child: Text("S.O. Snackbar"),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => Get.defaultDialog(
                title: "Título",
                radius: 5,
                middleText: "Conteúdo",
              ),
              child: Text("Dialog"),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(
                    ThemeData.light(),
                  );
                  setState(() {});
                } else {
                  Get.changeTheme(
                    ThemeData.dark(),
                  );
                  setState(() {});
                }
              },
              child: Text(Get.isDarkMode ? "Dark Theme" : "Light Theme"),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                Page2View(),
                fullscreenDialog: true,
              ),
              child: Text("Modal"),
            ),
          ],
        ),
      ),
    );
  }
}
