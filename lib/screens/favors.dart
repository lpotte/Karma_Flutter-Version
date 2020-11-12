import 'package:flutter/material.dart';

import 'favorCard.dart';

class ListFavors extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Favor();  
}
class Favor extends State<ListFavors>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return FavorCard(); 
        },
      );
  }
}