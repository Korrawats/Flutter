import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/flutterfood/oderpages/oderpage.dart';
import 'package:hello/flutterfood/profilepages/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER FOOD'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person,
                    size: 60.0,
                    color: Colors.white,
                  ),
                  Text(
                    'Korrawat',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
                title: _buildDrawerItem(Icon(Icons.fastfood), 'Food'),
                onTap: () {
                  setState(() {
                    /*
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPage()),
                    );
                     */
                  });
                }),
            ListTile(
                title: _buildDrawerItem(Icon(Icons.person), 'Profile'),
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  });
                }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
            print(_selectedBottomNavIndex);
          });
        },
      ),
      body: Container(
        child: Center(
          child: _selectedBottomNavIndex == 0
              ? Text(
                  'FOOD MENU',
                  style: TextStyle(fontSize: 20),
                )
              : Text(
                  'Oder',
                  style: TextStyle(fontSize: 20),
                ),
        ),
      ),
    );
  }

  Row _buildDrawerItem(Widget icon, String title) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8.0),
        Text(title),
      ],
    );
  }
}
