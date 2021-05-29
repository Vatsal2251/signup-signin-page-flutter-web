import 'package:flutter/material.dart';

class FWorker extends StatefulWidget {
  @override
  _FWorkerState createState() => _FWorkerState();
}

class _FWorkerState extends State<FWorker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width - 100,
            child: Text(
              'data',
              style: TextStyle(
                fontSize: 50.0,
                color: Colors.black,
              ),
            )),
      ],
    );
  }
}
