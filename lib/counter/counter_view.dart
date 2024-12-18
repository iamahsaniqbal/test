/*
  CounterView will be responsible for displaying the counter UI and handling the user interactions
  - use BlocBuilder 
*/

import 'package:bloc_counter/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body

      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Playing with BLoC ",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Here is the counter value: ",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  state.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            ),
          );
        },
      ),

      //buttons

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //increment button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: const Icon(Icons.add),
          ),

          const SizedBox(height: 10),

          //decrement button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
