import 'package:flutter/material.dart';

class DecToBin extends StatefulWidget {
  @override
  _DecToBinState createState() => _DecToBinState();
}

class _DecToBinState extends State<DecToBin> {
  String _binary = "0";
  String _decimal = "";

  void _onPressed(String value) {
    setState(() {
      _decimal = _decimal + value;
      _binary = int.parse(_decimal, radix: 10).toRadixString(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_decimal',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#1f1f1f".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
          Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: Text(
                '$_binary',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(int.parse("#1f1f1f".replaceAll('#', '0xff'))),
                    fontSize: 35),
              )),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("1");
                          },
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("2");
                          },
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("3");
                          },
                        ),
                      )),
                    ],
                  ))),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("4",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("4");
                          },
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("5");
                          },
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("6",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("6");
                          },
                        ),
                      )),
                    ],
                  ))),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("7",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("7");
                          },
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("8",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("8");
                          },
                        ),
                      )),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Color(
                              int.parse("#ffffff".replaceAll('#', '0xff'))),
                          child: Text("9",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 24)),
                          onPressed: () {
                            _onPressed("9");
                          },
                        ),
                      )),
                    ],
                  ))),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: MaterialButton(
                          color: Color(
                              int.parse("#F00000".replaceAll('#', '0xff'))),
                          onPressed: () {
                            setState(() {
                              _binary = "0";
                              _decimal = "";
                            });
                          },
                          child: Text("Reset",
                              style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ))),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: MaterialButton(
                        color:
                            Color(int.parse("#ffffff".replaceAll('#', '0xff'))),
                        child: Text("0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 24)),
                        onPressed: () {
                          _onPressed('0');
                        },
                      ),
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
