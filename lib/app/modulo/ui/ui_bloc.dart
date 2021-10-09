import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/infra/controller_bloc.dart';

class MyHomeBloc extends StatefulWidget {
  const MyHomeBloc({Key? key}) : super(key: key);

  @override
  State<MyHomeBloc> createState() => _MyHomeBlocState();
}

class _MyHomeBlocState extends State<MyHomeBloc> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              BlocBuilder<CounterCubit, int>(builder: (context, count) {
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headline4,
                );
              })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterCubit>().increment();
          },
          child: const Icon(Icons.add),
        ),
      );
  }
}
