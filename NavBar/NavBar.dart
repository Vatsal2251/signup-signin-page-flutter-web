import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:independent_worker/NavBar/src/CompName.dart';
import 'package:independent_worker/NavBar/src/NavBar.dart';
import 'package:independent_worker/login.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100,
        color: Colors.blueAccent,
        child: Stack(
          children: [
            CompName(),
            Align(
              alignment: Alignment.center,
              child: NaviBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBarItem(
                icon: Feather.log_out,
                active: false,
                touched: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
