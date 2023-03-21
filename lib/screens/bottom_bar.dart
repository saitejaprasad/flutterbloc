import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbloc/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex =0;
  static final List<Widget>_widgetOptions =<Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
      
    });
    // _selectedIndex= index;
    // print(' Tapped index is ${_selectedIndex}');
    // print("Tapped index is"+ _selectedIndex.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  AppBar(
      //   title: const Text("My tickets"),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            elevation: 10,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: const Color(0xff526480),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
              BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "ticket"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
            ]),
      );
  }
}