import 'package:flutter/material.dart';
import 'package:login_flutter/MenuManagerPage/MenuPage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ຈັດການຂໍ້ມູນພື້ນຖານ",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: MenuPage(),
    );
  }
}
