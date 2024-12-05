import 'package:flutter/material.dart';
import 'package:login_flutter/Drawer/Darwer1/Arrow.dart';
import 'package:login_flutter/Drawer/Darwer1/Assignment.dart';
import 'package:login_flutter/Drawer/Darwer1/BarChart.dart';
import 'package:login_flutter/Drawer/Darwer1/Down_load.dart';
import 'package:login_flutter/Drawer/Darwer1/MyWidget.dart';
import 'package:login_flutter/Drawer/Darwer1/Search.dart';

class Darwer extends StatefulWidget {
  const Darwer({super.key});

  @override
  State<Darwer> createState() => _DarwerState();
}

class _DarwerState extends State<Darwer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text("Soutsanouk"),
            accountEmail: Text("Soutsanouk@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Container(
                width: 80,
                height: 60,
                child: ClipOval(
                  child:
                      Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ຈັດການຂໍ້ມູນພື້ນຖານ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => MyWidget());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.assignment_turned_in,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ຂາຍ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Assignment());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_forward,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ສັງຊື້ສິນຄ້າ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Arrow());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.download,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ນໍາເຂົ້າສິນຄ້າ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Download());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ຄົ້ນຫາ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Search());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(), //ເສັ້ນຂີດຄັ້ນ

                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.bar_chart,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ລາຍງານ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Barchart());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),

                Divider(), //ເສັ້ນຂີດຄັ້ນ
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.amber.shade900,
                      size: 30,
                    ),
                    title: Text(
                      "ອອກຈາກລະບົບ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.blue[800],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (c) => Barchart());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
