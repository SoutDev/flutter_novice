import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ຂໍ້ມູນສິນຄ້າ"),
      ),
      body: Text("ສະເເດງຂໍ້ມູນປະເພດສິນຄ້າ"),
    );
  }
}
