import 'package:get/get.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/domain/use_case.dart';
final nc = NumberCounter();
class Controller extends GetxController {
  
  var count = nc.number;
  void increment() {
    count = nc.incrementnumber();
    update();
  }
}
