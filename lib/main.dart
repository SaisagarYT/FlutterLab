import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/bloc/splash_bloc.dart';
import 'package:flutter_application_1/features/navigation/About.dart';
import 'package:flutter_application_1/features/navigation/Contact.dart';
import 'package:flutter_application_1/pages/ButtonsPage.dart';
import 'package:flutter_application_1/pages/Experiment1.dart';
import 'package:flutter_application_1/pages/Experiment2.dart';
import 'package:flutter_application_1/pages/Experiment3.dart';
import 'package:flutter_application_1/pages/Experiment4.dart';
import 'package:flutter_application_1/pages/Startpage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './features/navigation/Home.dart';

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
          '/main': (context) => Home(),
          '/contacts': (context) => Contact(),
          '/about': (context) => About(),
          '/buttons': (context) => Buttonspage(),
          '/home': (context) => Homepage(),
          '/exp2': (context) => Experiment2(),
          '/exp3': (context) => Experiment3(),
          '/exp4': (context) => Experiment4(),
          '/exp5': (context) => Homepage(),
          '/exp6': (context) => Homepage(),
          '/exp7': (context) => Homepage(),
          '/exp8': (context) => Homepage(),
          '/exp9': (context) => Homepage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
