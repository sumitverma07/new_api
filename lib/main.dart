import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ok/cubit/counter_cubit.dart';
import 'package:ok/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: HomePage(),
    ));
  }
}
