import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:mobx_bloc_getx_cleandart/app/modulo/ui/ui_bloc.dart';

import 'modulo/infra/controller_bloc.dart';
import 'modulo/ui/ui_getx.dart';

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: MaterialApp(
      title: 'Gerindo Estados - Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomeGetX(),
    ),);
  }
}
