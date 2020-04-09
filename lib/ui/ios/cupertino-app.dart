import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc_bloc/ui/ios/pages/home.page.dart';

class MyCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "IMC",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
