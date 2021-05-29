import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:independent_worker/pages/fworker.dart';

class NaviBar extends StatefulWidget {
  @override
  _NaviBarState createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        children: [
          NavBarItem(
            active: selected[0],
            icon: Feather.home,
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItem(
            active: selected[1],
            icon: Feather.search,
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            active: selected[2],
            icon: Feather.settings,
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            active: selected[3],
            icon: Feather.folder,
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            active: selected[4],
            icon: Feather.message_circle,
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function touched;
  final bool active;

  NavBarItem({this.icon, this.touched, this.active});

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 80,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 275),
                      height: 35,
                      width: 5,
                      decoration: BoxDecoration(
                        color:
                            widget.active ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Icon(
                        widget.icon,
                        color: widget.active ? Colors.white : Colors.white54,
                        size: 19,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
