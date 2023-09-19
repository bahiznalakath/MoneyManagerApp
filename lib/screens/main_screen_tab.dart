import 'package:flutter/material.dart';
import 'package:moneymanagerapp/constants.dart';

class MainscreenHost extends StatefulWidget {
  const MainscreenHost({Key? key}) : super(key: key);


  @override
  State<MainscreenHost> createState() => _MainscreenHostState();
}

class _MainscreenHostState extends State<MainscreenHost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:0 ,
        onTap: (index){},
        selectedItemColor: secondaryDark,
        unselectedItemColor: fontLight,
        items: [
          BottomNavigationBarItem(icon: Image.asset("name"))
        ],
      ),
    );
  }
}
