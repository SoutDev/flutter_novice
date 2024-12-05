import 'package:flutter/material.dart';

class UnitPage extends StatelessWidget {
  const UnitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ໜ່ວຍ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // ຈໍານວນຄອລັມ
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: units.length,
        itemBuilder: (ctx, i) => UnitItem(
          name: units[i]['name'],
          description: units[i]['description'],
          icon: units[i]['icon'],
        ),
      ),
    );
  }
}

class UnitItem extends StatelessWidget {
  final String name;
  final String description;
  final IconData icon;

  const UnitItem({
    required this.name,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => UnitDetailPage(unitName: name)),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.orange),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}

class UnitDetailPage extends StatelessWidget {
  final String unitName;

  const UnitDetailPage({required this.unitName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(unitName),
      ),
      body: Center(
        child: Text('ລາຍລະອຽດກ່ຽວກັບ $unitName'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UnitPage(),
  ));
}

// ຕົວຢ່າງຂໍ້ມູນໜ່ວຍ
final List<Map<String, dynamic>> units = [
  {
    'name': 'ໜ່ວຍ 1',
    'description': 'ລາຍລະອຽດຂອງ ໜ່ວຍ 1',
    'icon': Icons.ac_unit,
  },
  {
    'name': 'ໜ່ວຍ 2',
    'description': 'ລາຍລະອຽດຂອງ ໜ່ວຍ 2',
    'icon': Icons.access_alarm,
  },
  {
    'name': 'ໜ່ວຍ 3',
    'description': 'ລາຍລະອຽດຂອງ ໜ່ວຍ 3',
    'icon': Icons.accessibility,
  },
  {
    'name': 'ໜ່ວຍ 4',
    'description': 'ລາຍລະອຽດຂອງ ໜ່ວຍ 4',
    'icon': Icons.account_balance,
  },
  {
    'name': 'ໜ່ວຍ 4',
    'description': 'ລາຍລະອຽດຂອງ ໜ່ວຍ 4',
    'icon': Icons.account_balance,
  },
];
