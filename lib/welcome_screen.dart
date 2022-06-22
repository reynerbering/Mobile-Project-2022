import 'package:fitr/goal_screen.dart';
import 'package:fitr/start_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
const WelcomeScreen({Key? key}) : super(key: key);

@override
State<StatefulWidget> createState() => StartState();
}

class StartState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        backgroundColor: const Color(0xFFF0FCFF),
        appBar: AppBar(
            backgroundColor: Color(0xFFF0FCFF),
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => StartScreen()));},)),
        body: Center(
            child: SingleChildScrollView(
            child: Column(
                children: [
                  Image.asset('assets/images/wcimg.png', height: 250, width: 320),
                  SizedBox(height: 35),
                  const Text(
                    'Welcome to Fitr!',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30, fontFamily: 'SF UI', letterSpacing: 0.5 ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            flex: 1,
                            child: CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Color(0xFFE5E5E5),
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/icons/padlock.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            )),
                        const Expanded(
                            flex: 2,
                            child: Text(
                                'Your privacy is very important to us. We guarantee your data will be kept securely and encrypted. This way, you can fully concentrate on your goals',
                                style: TextStyle(fontSize: 15, fontFamily: 'SF UI', color: Colors.black38),
                                textAlign: TextAlign.justify)),],),),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                            flex: 1,
                            child: CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Color(0xFFE5E5E5),
                              child: ClipRRect(
                                child: Image.asset(
                                  'assets/icons/science.png',
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Text(
                                'Our approach is supported by scientific evidence and will help you improve your eating habits in a healthy, sustainable manner', style: TextStyle(fontSize: 15, fontFamily: 'SF UI', color: Colors.black38),
                                textAlign: TextAlign.justify))],),),
                  SizedBox(height: 30),
                  ElevatedButton(
                    child: const Text('CONTINUE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, fontFamily: 'SF UI', letterSpacing: 0.5)),
                    onPressed: () {Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const GoalScreen()),
                                );
},
                    style: ElevatedButton.styleFrom(shape: const StadiumBorder(), padding: const EdgeInsetsDirectional.fromSTEB(55, 12, 55, 12), primary: Color(0xFF53B6FF) ),
                  ),
                  SizedBox(height: 50),
                ]))));}}
