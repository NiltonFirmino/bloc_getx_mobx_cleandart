import 'package:mobx/mobx.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/domain/use_case.dart';

class ControllerCounter {
  final nc = NumberCounter();

  late final counter = Observable(nc.number);
  late final incnumber = Action(incrementnum);

  int incrementnum()=> counter.value = nc.incrementnumber();
  }
