import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class Increament extends CounterEvent {
  @override
  List<Object?> get props => [];
}

class Decreament extends CounterEvent {
  @override
  List<Object?> get props => [];
}
