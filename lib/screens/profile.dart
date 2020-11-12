import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<AuthProvider>(builder: (context, model, child) {
        return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Text('¡Bienvenido a Karma!',
                    style: TextStyle(fontSize: 28, color: Colors.black)),
                Spacer(),
                Row(
                  children: [
                    Text('Número de Karmas: ',
                        style: TextStyle(fontSize: 20, color: Colors.purple)),
                    Text('2',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
                Spacer(flex: 2),
                MaterialButton(
                    onPressed: () {
                      model.setLogged(0);
                    },
                    child:
                        Text('Logout', style: TextStyle(color: Colors.white)),
                    color: Colors.purple),
              ],
            ));
      }),
    );
  }
}
