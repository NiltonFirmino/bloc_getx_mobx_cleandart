import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/infra/controller.dart';

class MyHomeMobX extends StatefulWidget {
  const MyHomeMobX({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomeMobX> createState() => _MyHomeMobXState();
}

class _MyHomeMobXState extends State<MyHomeMobX> {
  final cc = ControllerCounter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                  // ignore: unnecessary_brace_in_string_interps
                  cc.counter.value.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cc.incnumber();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
