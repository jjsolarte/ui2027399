import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui2027399/bloc/login/login_bloc.dart';
import 'package:ui2027399/ui/Instagram_Sena.dart';
import 'package:ui2027399/ui/LinearUI.dart';
import 'package:ui2027399/ui/MusicUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LinearUI(),
      ),
    );
  }
}