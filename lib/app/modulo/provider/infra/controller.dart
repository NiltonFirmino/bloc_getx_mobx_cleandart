import 'package:mobx/mobx.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/domain/use_case.dart';

class ControllerCounter {
  NumberCounter nc = NumberCounter();

  late final counter = Observable<int>(nc.number).toString();
  

  incnumber() => nc.incrementnumber();
}
