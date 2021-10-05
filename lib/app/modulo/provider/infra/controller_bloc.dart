import 'dart:html';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/domain/use_case.dart';

enum BlocEvent { increment }

class ControllerCounterBloc extends Bloc<BlocEvent, int> {

  final nc = NumberCounter();
  ControllerCounterBloc() : super(0);
  
  Stream<int> incrementBloc(BlocEvent event) async* {
    if (event == BlocEvent.increment) {
      nc.incrementnumber();
    }
  }
}
