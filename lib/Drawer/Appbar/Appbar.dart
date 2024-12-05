import 'package:flutter/material.dart';
import 'package:login_flutter/MenuManagerPage/MenuPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Tab> myTabs = [
    Tab(icon: Icon(Icons.home_filled), text: "Home"),
    Tab(icon: Icon(Icons.folder), text: "Account"),
    Tab(icon: Icon(Icons.assignment_turned_in), text: "Alarm"),
    Tab(icon: Icon(Icons.arrow_forward), text: "Home"),
    Tab(icon: Icon(Icons.download), text: "Account"),
    Tab(icon: Icon(Icons.search), text: "Alarm"),
    Tab(icon: Icon(Icons.bar_chart), text: "Alarm"),
  ];

  final List<Widget> myViews = [
    Center(child: MenuPage()),
    Center(child: Icon(Icons.account_circle)),
    Center(child: Icon(Icons.alarm)),
    Center(child: Icon(Icons.home)),
    Center(child: Icon(Icons.account_circle)),
    Center(child: Icon(Icons.alarm)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.amber.shade900,
              child: TabBar(
                isScrollable: true,
                tabs: myTabs,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: myViews,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
