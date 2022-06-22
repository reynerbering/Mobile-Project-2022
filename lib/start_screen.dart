import 'dart:io';
import 'package:fitr/signup_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
            child:
            Column(
                children: [
                  const SizedBox(height: 25),
                  Image.asset('assets/images/startimg.jpg',
                    height: 300,
                    width: 400),
                  const SizedBox(height: 30),
                  const Text(
                    'Wellness Starts\nWith You',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26, fontFamily: 'SF UI', letterSpacing: 0.5 ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Start your journey to a happier\n and healthier you',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, fontFamily: 'SF UI', color: Colors.grey ),
                  ),
                  const SizedBox(height: 45),
                  ElevatedButton(
                    child: const Text('LOG IN', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19, fontFamily: 'SF UI', letterSpacing: 0.5)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(shape: const StadiumBorder(), padding: const EdgeInsetsDirectional.fromSTEB(55, 12, 55, 12), primary: Color(0xFF53B6FF) ),
                  ),
                  const SizedBox(height: 5),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                    },
                    child: const Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19, fontFamily: 'SF UI', letterSpacing: 0.5,)),
                  ),



        ])));}}
