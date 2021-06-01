import 'package:flutter/material.dart';
import 'examples/exemplo1/primeiro_exemplo.dart';
import 'examples/exemplo2/segundo_exemplo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SegundoExemplo(),
    );
  }
}
