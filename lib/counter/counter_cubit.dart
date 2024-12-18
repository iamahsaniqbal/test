import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //constructor to accept the initial state
  CounterCubit(super.initialState);

  //increment the counter

  void increment() => emit(state + 1);

  //decrement the counter
  void decrement() => emit(state - 1);
}
