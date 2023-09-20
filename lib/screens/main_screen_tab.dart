import 'package:flutter/material.dart';
import 'package:moneymanagerapp/constants.dart';
import 'package:moneymanagerapp/screens/home_profile_tab.dart';
import 'package:moneymanagerapp/screens/home_screen_tab.dart';

class MainscreenHost extends StatefulWidget {
  const MainscreenHost({Key? key}) : super(key: key);

  @override
  State<MainscreenHost> createState() => _MainscreenHostState();
}

class _MainscreenHostState extends State<MainscreenHost> {
  var currentIndex = 0;

  Widget buildTabContent(int index) {
    switch (index) {
      case 0:
        return const HomeProfileTab();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return const HomeProfileTab();
      default:
        return const HomeScreenTab();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildTabContent(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            currentIndex =index ;
          }
          );
          print(currentIndex);
        },
        selectedItemColor: secondaryDark,
        unselectedItemColor: fontLight,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/home-1.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/chart-vertical.png"),
              label: "Stat"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/wallet.png"), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user-1.png"), label: "Profile"),
        ],
      ),
    );
  }
}
