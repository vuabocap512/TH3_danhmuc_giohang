import 'package:danhmuc_giohang/CheckOut.dart';
import 'package:danhmuc_giohang/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currenIndex = 0;
  List hp = [
    HomePages(),
    HomePages(),
    HomePages(),
    HomePages(),
    HomePages(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Kells'),
          leading: Icon(
            Icons.filter_alt_outlined,
            color: Colors.white30,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white30,
                )),
          ],
          backgroundColor: Color.fromARGB(255, 50, 183, 54),
        ),
        body: hp[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 20,
          currentIndex: _currenIndex,
          selectedItemColor: Colors.green,
          onTap: (int index) {
            setState(() {
              _currenIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Store',
              icon: Icon(
                Icons.store,
              ),
            ),
            BottomNavigationBarItem(
              label: 'My Cart',
              icon: Icon(
                Icons.card_travel_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Favourites',
              icon: Icon(
                Icons.favorite_sharp,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.account_circle,
              ),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(
                Icons.more_horiz_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
