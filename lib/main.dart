import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'saved.dart';
void main() {
  runApp(const MaterialApp(
    title: 'News App',
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> widgetList = const[
      Home(),
      Search(),
      Saved(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
          size: 30,
        ),
        currentIndex: selectedIndex,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save),
          label: 'Saved',
        ),
      ]),
    );
  }
}
