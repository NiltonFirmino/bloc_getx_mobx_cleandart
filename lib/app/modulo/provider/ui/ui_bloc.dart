import 'package:flutter/material.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/infra/controller_bloc.dart';

class MyHomeBloc extends StatefulWidget {
  const MyHomeBloc({Key? key}) : super(key: key);

  @override
  State<MyHomeBloc> createState() => _MyHomeBlocState();
}

class _MyHomeBlocState extends State<MyHomeBloc> {
  final ccbloc = ControllerCounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador usando Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de Pares usando Bloc:',
            ),
            StreamBuilder(
              stream: ccbloc.incrementBloc(BlocEvent.increment),
              builder: (context, snapshot) {
                return Text(
                  ccbloc.state.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ccbloc.add(BlocEvent.increment);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
