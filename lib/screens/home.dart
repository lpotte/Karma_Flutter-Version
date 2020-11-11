import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:provider/provider.dart';

import 'favors.dart';
import 'newfavors.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.purple,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 55.0,
          items: <Widget>[
            Icon(Icons.person, size: 30, color: Colors.white),
            Icon(Icons.list, size: 30, color: Colors.white),
            Icon(Icons.add, size: 30, color: Colors.white),
          ],
          backgroundColor: Colors.white,
          color: Colors.purple,
          animationCurve: Curves.easeOutExpo,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Consumer<AuthProvider>(builder: (context, model, child) {
              if (_page == 2) {
                return BinToDec();
              } else {
                if (_page == 1) {
                  return DecToBin();
                } else {
                  return FlatButton(
                    onPressed: () {
                      model.setLogged(0);
                    },
                    child: Text('Logout'),
                  );
                }
              }
            }),
          ),
        ));
  }
}

