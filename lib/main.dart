import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 120,
              color: Colors.brown,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso (Kg)",
                labelStyle: TextStyle(color: Colors.brown),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown, fontSize: 25),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Colors.brown),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.brown, fontSize: 25),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.brown,
                ),
              ),
            ),
            Text(
              "Resultado",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.brown,
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
