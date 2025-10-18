import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/image.dart';
import 'package:flutter_application_1/features/bloc/splash_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  static bool animation = false;
  @override
  void initState() {
    context.read<SplashBloc>().add(DisplaySplashScreenFor3Seconds());
    Future.delayed(
      Duration(seconds: 1),
      () => {
        setState(() {
          animation = true;
        }),
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashScreenInterfaceState) {
            Navigator.pushNamed(context, '/buttons');
          }
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Image.asset(AppImages.background, scale: 2),
              ),
              Positioned(
                top: -70,
                left: -100,
                child: Image.asset(AppImages.background2),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.flutterIcon, scale: 6),
                      AnimatedDefaultTextStyle(
                        style: TextStyle(
                          fontSize: animation ? 25 : 0,
                          color: Colors.black,
                        ),
                        duration: Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                        child: Text("Flutter\nExperiments"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
