import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operaciones = "";
  String resultadoOperaciones = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Calculadora",
              style: TextStyle(fontSize: 50, color: Colors.white))),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(resultadoOperaciones,
                    style: TextStyle(fontSize: 70, color: Colors.red)),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(operaciones,
                  style: TextStyle(fontSize: 50, color: Colors.white)),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "%";
                          });
                        },
                        child: Text("%",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += " ² ";
                          });
                        },
                        child: Text("x²",
                            style:
                                TextStyle(fontSize: 35, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "√";
                          });
                        },
                        child: Text("√",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          //setState(() {
                          // operaciones = "  ";
                          // resultadoOperaciones = "";
                          //});
                        },
                        child: Text("CE",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "7";
                          });
                        },
                        child: Text("7",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "8";
                          });
                        },
                        child: Text("8",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "9";
                          });
                        },
                        child: Text("9",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += " / ";
                          });
                        },
                        child: Text("/",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "4";
                          });
                        },
                        child: Text("4",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "5";
                          });
                        },
                        child: Text("5",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "6";
                          });
                        },
                        child: Text("6",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += " * ";
                          });
                        },
                        child: Text("*",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "1";
                          });
                        },
                        child: Text("1",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "2";
                          });
                        },
                        child: Text("2",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "3";
                          });
                        },
                        child: Text("3",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += " - ";
                          });
                        },
                        child: Text("-",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones += "0";
                          });
                        },
                        child: Text("0",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {
                          setState(() {
                            operaciones = "";
                          });
                        },
                        child: Text("C",
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: _calcularOperacion,
                        child: Text(("="),
                            style:
                                TextStyle(fontSize: 50, color: Colors.white))),
                  ),
                  SizedBox(
                      width: 64,
                      height: 64,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () {
                            setState(() {
                              operaciones += " + ";
                            });
                          },
                          child: Text("+",
                              style: TextStyle(
                                  fontSize: 50, color: Colors.white))))
                ],
              ),
            ],
          ),
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

    if (arreglo[1].trim() == "²") {
      var resultado = int.parse(arreglo[0]) * int.parse(arreglo[0]);
      resultado = resultado % 1 == 0 ? resultado.round() : resultado;
      setState(() {
        resultadoOperaciones = '$resultado';
      });
    }

    if (arreglo[0].trim() == "√") {
      double numero = double.parse(arreglo[1]);
      double resultado = sqrt(25);
      resultado = resultado % 1 == 0 ? resultado.round() : resultado;
      setState(() {
        resultadoOperaciones = '$resultado';
      });
    }
  }
}
