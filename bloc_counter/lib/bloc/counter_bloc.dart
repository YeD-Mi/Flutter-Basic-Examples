import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/counter_event.dart';
import 'package:bloc_counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(value: 0)) {
    on<Increament>(addValue);
    on<Decreament>(substractValue);
  }

  FutureOr<void> addValue(Increament event, dynamic emit) =>
      emit(CounterState(value: state.value! + 1));
  FutureOr<void> substractValue(Decreament event, dynamic emit) {
    if (state.value! > 0) {
      emit(CounterState(value: state.value! - 1));
    }
  }
}
