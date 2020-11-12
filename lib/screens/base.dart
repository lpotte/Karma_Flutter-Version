import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:karma_flutterversion/providers/businessLogicProvider.dart';
import 'package:provider/provider.dart';

import 'home.dart';
import 'login.dart';
import 'signup.dart';

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthProvider>(
        create: (context) => AuthProvider(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Karma',
            home: Consumer<AuthProvider>(
              builder: (context, model, child) {
                if (model.getLogged == 0){
                  return BaseHomeApp();
                }else{
                  if(model.getLogged == 1){
                     return LoginView();
                  }else{
                    if(model.getLogged == 2){
                      return SingUp();
                    }else{
                      return HomeView();
                    }
                    
                  }
                }
              },
            )));
  }
}

class BaseHomeApp extends StatelessWidget {
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
                    child: Text('Sign Up', style: TextStyle(color: Colors.white)),
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

