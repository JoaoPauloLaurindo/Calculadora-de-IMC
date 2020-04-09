import 'package:flutter/material.dart';
import 'pages/home.page.dart';

class MyMaterialApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
