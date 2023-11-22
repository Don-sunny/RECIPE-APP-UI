import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:figma_ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  List<Widget> _pages = [ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: [
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.restaurant,
                  color: _page == 0 ? Colors.white : Colors.grey,
                ),
                label: 'Recipes',
                labelStyle: TextStyle(
                    color: _page == 0
                        ? const Color.fromRGBO(134, 191, 62, 1)
                        : Colors.grey)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.list_outlined,
                  color: _page == 1 ? Colors.white : Colors.grey,
                ),
                label: 'Grocery',
                labelStyle: TextStyle(
                    color: _page == 1
                        ? const Color.fromRGBO(134, 191, 62, 1)
                        : Colors.grey)),
            CurvedNavigationBarItem(
                child: Icon(
                  IconlyLight.search,
                  color: _page == 2 ? Colors.white : Colors.grey,
                ),
                label: 'Explore',
                labelStyle: TextStyle(
                    color: _page == 2
                        ? const Color.fromRGBO(134, 191, 62, 1)
                        : Colors.grey)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: _page == 3 ? Colors.white : Colors.grey,
                ),
                label: 'Forum',
                labelStyle: TextStyle(
                    color: _page == 3
                        ? const Color.fromRGBO(134, 191, 62, 1)
                        : Colors.grey)),
            CurvedNavigationBarItem(
                child: Icon(
                  Icons.perm_identity,
                  color: _page == 4 ? Colors.white : Colors.grey,
                ),
                label: 'Profile',
                labelStyle: TextStyle(
                    color: _page == 4
                        ? const Color.fromRGBO(134, 191, 62, 1)
                        : Colors.grey)),
          ],
          color: Colors.white,
          buttonBackgroundColor: const Color.fromRGBO(134, 191, 62, 1),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: const ProfilePage()
        //  ListView(
        //   children: List.generate(_pages.length, (index) => _pages[index]),
        // ),
        );
  }
}
