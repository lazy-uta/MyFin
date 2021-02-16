import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myfin/route/expenses_page.dart';
import 'package:myfin/route/goal_page.dart';
import 'package:myfin/route/splash.dart';

void main() {
  runApp(GetMaterialApp(home: Splash()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> pageRoute = [GoalPage(), ExpensePage()];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    debugPrint("$index");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(child: Text("Myfin")),
        backgroundColor: Colors.green[300],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes), label: "Goal"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "expenses"),
        ],
        onTap: _onItemTaped,
        selectedItemColor: Colors.green[400],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
      ),
      body: pageRoute.elementAt(_selectedIndex),
    );
  }
}
