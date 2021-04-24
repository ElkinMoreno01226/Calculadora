import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operaciones = " ";
  String resultadoOperaciones = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.deepPurple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(resultadoOperaciones + "esto si me imprime")],
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(operaciones),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
              // shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.circular(10)),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "7";
                          });
                        },
                        child: Text('7')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "8";
                          });
                        },
                        child: Text('8')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "9";
                          });
                        },
                        child: Text('9')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " / ";
                          });
                        },
                        child: Text('/')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "4";
                          });
                        },
                        child: Text('4')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "5";
                          });
                        },
                        child: Text('5')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "6";
                          });
                        },
                        child: Text('6')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " * ";
                          });
                        },
                        child: Text('*')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "1";
                          });
                        },
                        child: Text('1')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "2";
                          });
                        },
                        child: Text('2')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "3";
                          });
                        },
                        child: Text('3')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " - ";
                          });
                        },
                        child: Text('-')),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += "0";
                          });
                        },
                        child: Text('0')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones = " ";
                          });
                        },
                        child: Text('C')),
                    ElevatedButton(
                        onPressed: _calcularOperacion, child: Text('=')),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operaciones += " + ";
                          });
                        },
                        child: Text('+')),
                  ],
                )
              ]),
        ),
      ],
    );
  }

  void _calcularOperacion() {
    var arreglo = operaciones.split(" ");
    if (arreglo[1].trim() == "-") {
      var resultado = int.parse(arreglo[0]) - int.parse(arreglo[2]);
      setState(() {
        resultadoOperaciones = '$resultado';
      });
    }
    if (arreglo[1].trim() == "+") {
      var resultado = int.parse(arreglo[0]) + int.parse(arreglo[2]);
      setState(() {
        resultadoOperaciones = '$resultado';
      });
    }
    if (arreglo[1].trim() == "*") {
      var resultado = int.parse(arreglo[0]) * int.parse(arreglo[2]);
      setState(() {
        resultadoOperaciones = '$resultado';
      });
    }
    if (arreglo[1].trim() == "/") {
      var resultado = int.parse(arreglo[0]) / int.parse(arreglo[2]);
      setState(() {
        resultadoOperaciones = '$resultado';
      });
    }
  }
}
