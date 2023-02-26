import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ucare/app/modules/Barview/cart.dart';
import 'package:ucare/app/modules/Barview/chat.dart';
import 'package:ucare/app/modules/Barview/home.dart';
import 'package:ucare/app/modules/Barview/profil.dart';
import 'package:ucare/app/modules/Barview/wishlist.dart';
import 'package:ucare/app/modules/home/views/home_view.dart';
import 'package:ucare/app/modules/login%20and%20register/views/login_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeView1(),
    CartView(),
    WishlistView(),
    ChatView(),
    ProfilView(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home1.png'),
            activeIcon: Image.asset('assets/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/cart1.png'),
            activeIcon: Image.asset('assets/cart.png'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/love1.png'),
            activeIcon: Image.asset('assets/love.png'),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/chat1.png'),
            activeIcon: Image.asset('assets/chat.png'),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/profil1.png'),
            activeIcon: Image.asset('assets/profil.png'),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 10, color: Color(0xff4F4F4F)),
        unselectedLabelStyle: TextStyle(fontSize: 10, color: Color(0xffBDBDBD)),
      ),
    );
  }
}
