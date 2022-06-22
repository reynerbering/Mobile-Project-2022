import 'dart:async';
import 'package:flutter/material.dart';
import 'start_screen.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const StartScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget (BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0FCFF),
      body:  Center(
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/images/fitrlogo.png'),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF039BE5))
          )])));}}
