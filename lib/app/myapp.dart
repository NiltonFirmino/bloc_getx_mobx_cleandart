import 'package:flutter/material.dart';

import 'modulo/provider/ui/ui_mobx.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeProvider(title: 'Flutter Demo Home Page'),
    );
  }
}
