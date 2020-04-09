import 'package:flutter/material.dart';
import 'package:imc_bloc/blocs/imc.bloc.dart';
import 'package:imc_bloc/ui/android/widgets/button-calcular.widget.dart';
import 'package:imc_bloc/ui/android/widgets/input.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo de IMC'),
      ),
      body: ListView(
        children: <Widget>[
          Input(
            label: "Altura (cm)",
            ctrl: bloc.altCtrl,
          ),
          Input(
            label: "Peso (kg)",
            ctrl: bloc.pesoCtrl,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              bloc.resultado,
              textAlign: TextAlign.center,
            ),
          ),
          CalcularButton(
              label: "Calcular",
              function: () {
                setState(() {
                  bloc.calculate();
                });
              }),
        ],
      ),
    );
  }
}
