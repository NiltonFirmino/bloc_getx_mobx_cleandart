import 'package:mobx_bloc_getx_cleandart/app/modulo/provider/domain/use_case.dart';

class ControllerCounter {
  NumberCounter nc = NumberCounter();

  int get initialnumber => nc.number;

  Stream<String>? currentnumber() {
    initialnumber.toString();
        }

  incnumber() => nc.incrementnumber();
}
