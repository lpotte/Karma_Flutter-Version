import 'package:flutter/material.dart';
import 'package:karma_flutterversion/providers/authProvider.dart';
import 'package:provider/provider.dart';

class SingUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Sing Up"),
          backgroundColor: Colors.purple,
        ),
        body: Consumer<AuthProvider>(builder: (context, model, child) {
          return Form(
              key: _formKey,
              child: Container(
                //padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child:
                          //Text("Digite su nombre Real"),
                          TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter your real name',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                        },
                      ),
                    ),
                    Spacer(flex: 2),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: //Text("Digite su apodo"),
                          TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person_pin),
                          hintText: 'Enter your nickname',
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter some text';
                          }
                        },
                      ),
                    ),
                    Spacer(flex: 2),
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
                    Spacer(flex: 2),
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
                    Expanded(
                      flex: 2,
                      child: RaisedButton(
                        child: Text('Submit', style: TextStyle(color: Colors.white)),
                        color: Colors.purple,
                        onPressed: () {
                          model.setLogged(0);
                          if (_formKey.currentState.validate()) {
                            // Si el formulario es válido, queremos mostrar un Snackbar
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Processing Data')));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ));
        }));
  }
}
