import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:independent_worker/login.dart';

void main() {
  runApp(MyWeb());
}

class MyWeb extends StatefulWidget {
  @override
  _MyWebState createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
