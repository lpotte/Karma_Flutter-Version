import 'package:flutter/material.dart';

class FavorCard extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            width: 500,
            color: Colors.grey,
            child: 
              Text("Favor De Prueba", style: TextStyle(color: Colors.white)),
          )
        ]
      ),
    );
  }
}