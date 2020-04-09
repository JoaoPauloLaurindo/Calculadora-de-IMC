import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = '';
  var ctrl = new MaskedTextController(mask: '000');

  Input({
    @required this.label,
    @required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
        ),
        keyboardType: TextInputType.number,
        controller: ctrl,
      ),
    );
  }
}
