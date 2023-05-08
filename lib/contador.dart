// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_bia/bolinha.dart";

class Contador extends StatefulWidget {
  const Contador( {super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  numero++;
                });
              },
              backgroundColor: Colors.pink[200],
              child: Center(
                child: Text("+", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Bolinha("$numero", false, false),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (numero - 1 >= 0) numero--;
                });
              },
              backgroundColor: Colors.pink[200],
              child: Center(
                child: Text("-", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
              ),
            )
          ],
        ),

        SizedBox(height: 20),
        Text("valor do contador: $numero", 
          style: TextStyle(
            fontSize: 20,
          
            color: Colors.black,
          ),
        )
      ]
    );
  }

  void aumentar() { numero++; }
  void diminuir() { numero--; }

  void exemplo() {
    setState(aumentar);
  }
}
