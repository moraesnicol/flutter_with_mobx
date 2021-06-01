import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class SegundoExemplo extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segundo Exemplo MobX"),
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded), onPressed: () {})
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: controller.mudarNome,
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Sobre Nome'),
                onChanged: controller.mudarSobrenome,
              ),
              SizedBox(height: 20),
              Observer(builder: (_) {
                return Text('${controller.nomecompleto} ');
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //   controller.increment();
        },
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
