import 'package:flutter/material.dart';
import 'package:independent_worker/NavBar/NavBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavBar(),
          ],
        ),
      ),
    );
  }
}
