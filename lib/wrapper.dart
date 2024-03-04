import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/increment_bloc.dart';
import 'package:flutter_bloc_tutorial/main.dart';
class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IncrementBloc() ,
      child: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
