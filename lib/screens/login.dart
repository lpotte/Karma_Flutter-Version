import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:provider/provider.dart';

import 'signup.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Consumer<AuthProvider>(builder: (context, model, child) {
            return Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Image.asset(
                  'imgs/logo2.png',
                  height: 250,
                  fit: BoxFit.contain,
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      model.setLogged(1);
                    },
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                    color: Colors.purple,
                  ),
                ),
                Spacer(flex: 2),
                Expanded(
                  flex: 1,
                    child: Container(
                  //padding: const EdgeInsets.all(5),
                  child: MaterialButton(
                      onPressed: () {
                        model.setLogged(2);
                      },
                      child: Text('Sing Up',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.purple),
                )),
              ],
            ));
          }),
        ));
  }
}
