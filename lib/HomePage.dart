import 'package:flutter/material.dart';
import 'package:login_flutter/Drawer/Appbar/Appbar.dart';
import 'package:login_flutter/Drawer/Darwer.dart';

class RoutLogIn extends StatefulWidget {
  const RoutLogIn({super.key});

  @override
  State<RoutLogIn> createState() => _RoutLogInState();
}

class _RoutLogInState extends State<RoutLogIn> {
  int idx = 0;

  void onTab(int indx) {
    setState(() {
      idx = indx;
    });
  }

  Widget bottomBar() {
    return BottomNavigationBar(
      currentIndex: idx,
      onTap: onTab,
      backgroundColor: Colors.amber.shade900,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Colors.white, size: 35),
      selectedLabelStyle: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "ໜັາຫຼັກ"),
        BottomNavigationBarItem(
            icon: Icon(Icons.login), label: "ເຂົ້າສູ່ລະບົບ"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
        BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "ບໍລິການ"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Darwer(),
      appBar: AppBar(
        title: Text(
          'ຮ້ານ ຂາຍປື້ມ',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.blue),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: MyHomePage(),
      bottomNavigationBar: bottomBar(),
    );
  }
}
