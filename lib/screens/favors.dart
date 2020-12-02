import 'package:flutter/material.dart';

import '../model/favor.dart';

class ListFavors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Favor();
}

class Favor extends State<ListFavors> {
  @override
  Widget build(BuildContext context) {
    llenarfavs();
    return ListView(children: 
      favorsList.map(_buildItem).toList(),
    );
  }
}

Widget _buildItem(favor fav) {
  return Card (
    child: ListTile(
      title: new Text(fav.tipo),
      subtitle: new Text('Quien pidió: ${fav.who} \nQuien realiza: ${fav.towho}'),
      leading: new Icon(Icons.map),
      onTap: (){
        print(fav.estado);
      },
    )
  );
}
