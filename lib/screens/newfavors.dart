import 'package:flutter/material.dart';

class BinToDec extends StatefulWidget {
  @override
  _BinToDecState createState() => _BinToDecState();
}

class _BinToDecState extends State<BinToDec> {
  String _binary = "";
  String _decimal = "0";

  void _onPressed(String value) {
    setState(() {
      _binary = _binary + value;
      _decimal = int.parse(_binary, radix: 2).toRadixString(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
          Widget>[
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
        Expanded(
            flex: 3,
            child: Container(
                padding: const EdgeInsets.all(8.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(int.parse(
                                      "#EAEAEA".replaceAll('#', '0xff'))),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(4.00)),
                        child: MaterialButton(
                            color: Color(
                                int.parse("#ffffff".replaceAll('#', '0xff'))),
                            onPressed: () {
                              _onPressed("1");
                            },
                            child: Text("1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 24))),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.00, 3.00),
                                  color: Color(int.parse(
                                      "#EAEAEA".replaceAll('#', '0xff'))),
                                  blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(4.00)),
                        child: MaterialButton(
                            color: Color(
                                int.parse("#ffffff".replaceAll('#', '0xff'))),
                            onPressed: () {
                              _onPressed("0");
                            },
                            child: Text("0",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 24))),
                      ),
                    )
                  ],
                ))),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.00, 3.00),
                        color:
                            Color(int.parse("#EAEAEA".replaceAll('#', '0xff'))),
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(4.00)),
              child: MaterialButton(
                  color: Color(int.parse("#F00000".replaceAll('#', '0xff'))),
                  onPressed: () {
                    setState(() {
                      _binary = "";
                      _decimal = "0";
                    });
                  },
                  child: Text("Reset",
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ))),
            ),
          ),
        ),
      ]),
    );
  }
}
