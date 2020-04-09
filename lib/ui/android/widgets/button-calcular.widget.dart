import 'package:flutter/material.dart';

class CalcularButton extends StatelessWidget {
  var label = "";
  Function function;

  CalcularButton({
    @required this.label,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        onPressed: function,
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
