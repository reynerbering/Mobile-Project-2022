import 'package:fitr/calendar.dart';
import 'package:fitr/add_meal.dart';
import 'package:fitr/breakfast.dart';
import 'package:fitr/reusable_widgets/dashboard_appcard_1.dart';
import 'package:fitr/reusable_widgets/dashboard_appcard_2.dart';
import 'package:fitr/reusable_widgets/bottom_navbar.dart';
import 'package:fitr/reusable_widgets/track.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        titleSpacing: 30.0,
        title: Text(
          'Today',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16.0),
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 20),
            icon: Icon(
              Icons.calendar_today_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calendar()),
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Summary',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w500),
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'DETAILS',
                              style: TextStyle(
                                  color: Color(0xFF039BE5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('click')),
                        ]),
                      ),
                    ],
                  ),
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: Colors.blue,
                      child: new InkWell(
                        onTap: () {
                          print('tapped blue no. 1');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0XFF367CFF),
                                Color(0xFF00B3FF),
                                Color(0XFF00DCF3)
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          width: width / 1.13,
                          height: 130,
                        ),
                      ),
                    ),
                    Column(children: [
                      //group 1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                '1,451',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                              Text(
                                'Eaten',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 80.0)),
                          Column(
                            children: [
                              Text(
                                '146',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 32.0),
                              ),
                              Text(
                                'Remaining',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 80.0)),
                          Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                              Text(
                                'Burned',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Padding(padding: EdgeInsets.only(bottom: 15)),

                      //group 2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Track(
                            head: 'CARBS',
                            headColor: Colors.white,
                            bgColor: Color(0XFF367CFF),
                            progressColor: Colors.white,
                            value: 1.0,
                            gram1: '255',
                            gram2: '105',
                            gramsColor: Colors.white,
                          ),
                          Track(
                            head: 'PROTEIN',
                            headColor: Colors.white,
                            bgColor: Color(0XFF367CFF),
                            progressColor: Colors.white,
                            value: 0.6,
                            gram1: '37',
                            gram2: '78',
                            gramsColor: Colors.white,
                          ),
                          Track(
                            head: 'FAT',
                            headColor: Colors.white,
                            bgColor: Color(0XFF367CFF),
                            progressColor: Colors.white,
                            value: 0.3,
                            gram1: '41',
                            gram2: '52',
                            gramsColor: Colors.white,
                          ),
                        ],
                      ),
                    ])
                  ],
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nutrition',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w500),
                      ),
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'DETAILS',
                              style: TextStyle(
                                  color: Color(0xFF039BE5),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print('click')),
                        ]),
                      ),
                    ],
                  ),
                ),

                //4 small cards
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DashboardAppCard1(
                          meal: 'Breakfast',
                          pageName: Breakfast(),
                          img: 'assets/images/breakfast.png',
                          calNum: '674',
                          calNum2: '479',
                        ),
                        DashboardAppCard1(
                          meal: 'Lunch',
                          pageName: Breakfast(),
                          img: 'assets/images/fried-rice.png',
                          calNum: '777',
                          calNum2: '639',
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DashboardAppCard1(
                          meal: 'Dinner',
                          pageName: AddMeal(),
                          img: 'assets/images/add.png',
                          calNum: '0',
                          calNum2: '399',
                        ),
                        DashboardAppCard1(
                          meal: 'Snacks',
                          pageName: AddMeal(),
                          img: 'assets/images/add.png',
                          calNum: '0',
                          calNum2: '80',
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                  ],
                ),

                //1 big card
                //start stack
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      color: Colors.blue,
                      child: new InkWell(
                        onTap: () {
                          print('tapped blue no. 2');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF00B3FF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          width: width / 1.13,
                          height: 130,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Water',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 2)),
                        Text(
                          'Goal: 2.00 Liters',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Text(
                          '0.00 L',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                                Image.asset(
                                  'assets/images/glass.png',
                                  width: 30,
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(99, 7, 0, 0),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                //end of stack

                Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'EXERCISE',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w500),
                      ),
                      Padding(padding: EdgeInsets.only(left: width / 2.9)),
                      Text(
                        'MEASUREMENTS',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),

                //2 small cards

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        DashboardAppCard2(),
                        Positioned(
                          width: 180,
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 25)),
                              Image.asset(
                                'assets/images/workout-machine.png',
                                width: 50,
                                height: 50,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                                child: Text(
                                  'Recommended: 30 min',
                                  style: TextStyle(fontSize: 10.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        DashboardAppCard2(),
                        Container(
                          padding: EdgeInsets.fromLTRB(13, 25, 10, 20),
                          child: Column(
                            children: [
                              // Padding(padding: EdgeInsets.only(top: 25)),
                              Text(
                                'Weight',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              ),
                              Text(
                                'Goal: 44kg',
                                style: TextStyle(fontSize: 10),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      print('minus');
                                    },
                                    icon: Icon(Icons.remove_circle_outline),
                                    iconSize: 20,
                                  ),
                                  Text(
                                    '70 kg',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24,
                                        color: Color(0xFF039BE5)),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      print('add');
                                    },
                                    icon: Icon(Icons.add_circle_outline),
                                    iconSize: 20,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
