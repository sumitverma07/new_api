import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ok/cubit/counter_cubit.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Cubit"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter"),
          BlocBuilder<CounterCubit, int>(builder: (context, count) {
            return Text(
              '$count',
              style: TextStyle(fontSize: 20),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  icon: Icon(Icons.add)),
              IconButton(
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  icon: Icon(Icons.remove))
            ],
          )
        ],
      ),
    );
  }
}
