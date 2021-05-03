import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operaciones = " ";
  String resultadoOperaciones = " ";
  List<Text> listaResultados = [];
  String mensaje = "";
  bool error = false;

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
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: listaResultados,
              ),
            ]),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(operaciones,
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              Text(mensaje),
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
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {},
                        child: Text("",
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
                            error = false;
                            mensaje = "";
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
                        onPressed: () {
                          setState(() {
                            double result = _funciones(operaciones);
                            if (error) {
                              mensaje = "Operación invalida";
                            } else {
                              listaResultados
                                  .add(Text("$operaciones = $result"));
                              operaciones = "$result";
                            }
                          });
                        },
                        child: Text(("="),
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
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

  double _funciones(String operacion) {
    try {
      double result = 0;
      if (operacion.indexOf(" + ") != -1) {
        List<String> simbolo = operacion.split(" + ");
        for (String valor in simbolo) {
          result += _funciones(valor);
        }
      } else if (operacion.indexOf(" - ") != -1) {
        List<String> simbolo = operacion.split(" - ");
        result += _funciones(simbolo.elementAt(0));
        for (var i = 1; i < simbolo.length; i++) {
          result -= _funciones(simbolo.elementAt(i));
        }
      } else if (operacion.indexOf(" / ") != -1) {
        List<String> simbolo = operacion.split(" / ");
        result += _funciones(simbolo.elementAt(0));
        for (var i = 1; i < simbolo.length; i++) {
          result = result / _funciones(simbolo.elementAt(i));
        }
      } else if (operacion.indexOf(" * ") != -1) {
        result = 1;
        List<String> simbolo = operacion.split("*");
        for (String valor in simbolo) {
          result *= _funciones(valor);
        }
      } else if (operacion.indexOf("√") != -1) {
        List<String> simbolo = operacion.split("√");
        result = sqrt(_funciones(simbolo.elementAt(1)));
      } else if (operacion.indexOf("²") != -1) {
        List<String> simbolo = operacion.split("²");
        result = _funciones(simbolo.elementAt(0));
        result *= result;
      } else if (operacion.indexOf("%") != -1) {
        List<String> simbolo = operacion.split("%");
        result = double.parse(simbolo.elementAt(0));
        result /= 100;
      } else if (operacion == "") {
        throw Exception("Termino vacio");
      } else {
        result = double.parse(operacion);
      }
      return result;
    } catch (e) {
      error = true;
      return 0;
    }
  }
}
