import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobx_bloc_getx_cleandart/app/modulo/domain/use_case.dart';
final nc = NumberCounter();
class CounterCubit extends Cubit<int> {
  
  CounterCubit() : super(nc.number);
  
  void increment() => emit (nc.incrementnumber());
}
