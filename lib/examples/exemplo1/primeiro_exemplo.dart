import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class PrimeiroExemplo extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeiro Exemplo MobX"),
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_forward_ios_rounded), onPressed: () {})
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (_) {
              return Text(
                '${controller.counter}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
