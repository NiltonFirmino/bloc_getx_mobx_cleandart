import 'package:flutter/material.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/ui/ui_bloc.dart';
//import 'modulo/provider/ui/ui_mobx.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerindo Estados - Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeBloc(),
    );
  }
}
