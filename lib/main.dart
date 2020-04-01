import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Informe seus dados";

  void resetTexts() {
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      _infoText = "Informe seus dados";
      _formKey = GlobalKey<FormState>();
    });
  }

  void calculo() {
    if (pesoController.text == null) {
      AlertDialog(
        title: Text("O Peso não pode estar vazio!"),
      );
    } else {
      setState(() {
        double peso = double.parse(pesoController.text);
        double altura = double.parse(alturaController.text) /
            100; // transformando em metros
        double imc = peso / (altura * altura);

        if (imc < 18.6) {
          _infoText = "Abaixo do Peso! (${imc.toStringAsPrecision(3)})";
        } else if (imc < 25) {
          _infoText = "Peso Normal! (${imc.toStringAsPrecision(3)})";
        } else if (imc < 30) {
          _infoText = "Sobre Peso! (${imc.toStringAsPrecision(3)})";
        } else {
          _infoText = "Obesidade! (${imc.toStringAsPrecision(3)})";
        }
      });
    }
  }

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
            onPressed: () {
              resetTexts();
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                size: 120,
                color: Colors.brown,
              ),
              TextFormField(
                controller: pesoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Peso (Kg)",
                  labelStyle: TextStyle(color: Colors.brown),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira o seu peso!";
                  }
                },
              ),
              TextFormField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.brown),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.brown, fontSize: 25),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Insira a sua altura!";
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        calculo();
                      }
                    },
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
                _infoText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 25,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
