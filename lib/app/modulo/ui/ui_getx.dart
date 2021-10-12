import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/infra/controller_getx.dart';

class MyHomeGetX extends StatefulWidget {
  const MyHomeGetX({Key? key}) : super(key: key);

  @override
  State<MyHomeGetX> createState() => _MyHomeGetXState();
}

class _MyHomeGetXState extends State<MyHomeGetX> {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador usando GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de Pares usando GetX:',
            ),
           GetBuilder<Controller>(
                builder: (_) => Text( 
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              )
        )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
