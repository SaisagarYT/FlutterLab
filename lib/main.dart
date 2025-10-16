import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/bloc/splash_bloc.dart';
import 'package:flutter_application_1/pages/ButtonsPage.dart';
import 'package:flutter_application_1/pages/Experiment1.dart';
import 'package:flutter_application_1/pages/Startpage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Startpage(),
          '/buttons': (context) => Buttonspage(),
          '/home': (context) => Homepage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
