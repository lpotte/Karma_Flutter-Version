import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:provider/provider.dart';

import 'signup.dart';

class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.purple,
        ),
        body: Center(
            child: Consumer<AuthProvider>(builder: (context, model, child) {
          return Form(
              key: _formKey,
              child: Container(
                //padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'imgs/logo2.png',
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      //Text("Digite su correo electronico"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Enter your email',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                        },
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      //Text("Digite su contraseña"),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter your password',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                        },
                      ),
                    ),
                    Spacer(),
                    RaisedButton(
                      child:
                          Text('Login', style: TextStyle(color: Colors.white)),
                      color: Colors.purple,
                      onPressed: () {
                        model.setLogged(3);
                        if (_formKey.currentState.validate()) {
                          // Si el formulario es válido, queremos mostrar un Snackbar
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        }
                      },
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ));
        })));
  }
}
