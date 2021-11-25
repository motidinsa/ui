import 'package:flutter/material.dart';
import 'package:ui/screens/account.dart';
import 'package:ui/screens/discover.dart';
import 'package:ui/screens/front.dart';
import 'package:ui/screens/inbox.dart';
import 'package:ui/screens/library.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _pages = [Front(), Discover(), Library(), Inbox(), Account()];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          // unselectedLabelStyle: TextStyle(fontSize: 15),
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: onTabTapped,
          // new
          currentIndex: _currentIndex,
          // new
          items: [
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
                label: 'Home'),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
                label: 'Discover'),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_arrow,
                  size: 28,
                ),
                label: 'Library'),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  size: 28,
                ),
                label: 'Inbox'),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 28,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
