import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'modulo/provider/infra/controller.dart';
import 'modulo/provider/ui/ui_provider.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    ControllerCounter cc = ControllerCounter();
    return StreamProvider<String>(
      initialData: cc.initialnumber.toString(),
      
      create: (context) => cc.currentnumber(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomeProvider(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
