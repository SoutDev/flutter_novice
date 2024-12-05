import 'package:flutter/material.dart';
import 'package:login_flutter/MenuManagerPage/CattegaryPage.dart';
import 'package:login_flutter/MenuManagerPage/ProductsPage.dart';
import 'package:login_flutter/MenuManagerPage/unitPage.dart';

List item = [
  "ຂໍ້ມູນຫົວໜ່ວຍ",
  "ຂໍ້ມູນປະເພດສິນຄ້າ",
  "ຂໍ້ມູນສິນຄ້າ",
  "ຜູ້ຕອບສະໜອງ",
  "ພະນັກງານ",
  "ລູກຄ້າ",
  "ອັດຕາເເລກປ່ຽນ",
  "ກ່ຽວກັບ"
];
List sizeicon = [60];
List coloricon = [Colors.orange.shade700];
List icon = [
  Icon(
    Icons.ac_unit,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.category,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.folder,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.local_shipping,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person_add_alt,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.help,
    size: sizeicon[0],
    color: coloricon[0],
  ),
];
List routPage = [
  UnitPage(),
  CategoryPage(),
  ProductsPage(),
];

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void showClick(index) {
    setState(() {
      MaterialPageRoute route =
          MaterialPageRoute(builder: (_) => routPage[index]);
      Navigator.of(context).push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: item.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (c, idx) {
            return InkWell(
              onTap: () => showClick(idx),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: 80,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                child: Column(
                  children: [
                    icon[idx],
                    Spacer(),
                    Text(
                      "${item[idx]}",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
