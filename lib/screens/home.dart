import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.purple,
        animationCurve: Curves.easeOutExpo,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.person, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color:  Colors.white,
        child: 
         Center(
          child: Consumer<AuthProvider>(builder: (context, model, child) {
            return FlatButton(
              onPressed: () {
                model.setLogged();
              },
              child: Text('Logout'),
            );
          }),
        ),
      )
    );
  }
}

