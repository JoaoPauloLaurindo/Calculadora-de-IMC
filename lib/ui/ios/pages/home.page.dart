import 'package:flutter/cupertino.dart';
import 'package:imc_bloc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo IMC"),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Altura (cm)",
              keyboardType: TextInputType.number,
              controller: bloc.altCtrl,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Peso (kg)",
              keyboardType: TextInputType.number,
              controller: bloc.pesoCtrl,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              bloc.resultado,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoButton.filled(
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
              child: Text(
                "Calcular",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
