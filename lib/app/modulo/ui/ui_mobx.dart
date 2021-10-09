import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/infra/controller_mobx.dart';

class MyHomeMobX extends StatefulWidget {
  const MyHomeMobX({Key? key}) : super(key: key);
  
  @override
  State<MyHomeMobX> createState() => _MyHomeMobXState();
}

class _MyHomeMobXState extends State<MyHomeMobX> {
  final ccmobx = ControllerCounterMobx();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador usando Mobx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de Pares usando MobX:',
            ),
            Observer(
              builder: (BuildContext context) {
                return Text(
                  ccmobx.counter.value.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ccmobx.incnumber();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
