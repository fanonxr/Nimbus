import 'package:flutter/material.dart';
import 'package:nimbus/screens/home_screen.dart';
import 'package:nimbus/screens/order_screen.dart';
import 'package:nimbus/screens/favorite_screen.dart';
import 'package:nimbus/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // keep track of what tab is active
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  // page handling
  HomeScreen homePage;
  OrderScreen orderPage;
  FavoriteScreen favoritePage;
  ProfileScreen profilePage;

  @override
  void initState() {
    super.initState();
    // load in all pages once app starts
    homePage = HomeScreen();
    orderPage = OrderScreen();
    favoritePage = FavoriteScreen();
    profilePage = ProfileScreen();
    pages = [homePage, orderPage, favoritePage, profilePage];
    currentPage = homePage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          // navigate to tapped page
          setState(() {
            currentTabIndex = index;
            currentPage = pages[currentTabIndex];
          });
        },
        currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text('Orders'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
      ),
      body: currentPage,
    );
  }
}
