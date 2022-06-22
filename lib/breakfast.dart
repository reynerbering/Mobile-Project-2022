import 'package:fitr/input_breakfast.dart';
import 'package:fitr/reusable_widgets/breakfast_appcard.dart';
import 'package:fitr/reusable_widgets/bottom_navbar.dart';
import 'package:fitr/reusable_widgets/track.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({Key? key}) : super(key: key);

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        title: Text(
          'Breakfast',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16.0),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Daily intake',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 10.0),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(60, 10, 20, 30)),
                      Text(
                        '1132 / 1940 kcal', //dummy data, need to replace this to function
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width / 1.35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      backgroundColor: Color(0xFFD3D3D3),
                      color: Color(0xFF00CF85),
                      value: 0.5,
                      minHeight: 7,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 100)),
                      Track(
                        head: 'CARBS',
                        headColor: Color(0XFFA39E9E),
                        bgColor: Color(0xFFD3D3D3),
                        progressColor: Color(0XFF0093FF),
                        value: 1.0,
                        gram1: '255',
                        gram2: '195',
                        gramsColor: Color(0XFFA39E9E),
                      ),
                      Track(
                        head: 'PROTEIN',
                        headColor: Color(0XFFA39E9E),
                        bgColor: Color(0xFFD3D3D3),
                        progressColor: Color(0XFF0093FF),
                        value: 0.6,
                        gram1: '37',
                        gram2: '78',
                        gramsColor: Color(0XFFA39E9E),
                      ),
                      Track(
                        head: 'FAT',
                        headColor: Color(0XFFA39E9E),
                        bgColor: Color(0xFFD3D3D3),
                        progressColor: Color(0XFF0093FF),
                        value: 0.3,
                        gram1: '41',
                        gram2: '52',
                        gramsColor: Color(0XFFA39E9E),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/breakfast-1.png',
                  width: width / 2,
                  height: height / 4,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 40, 50, 40),
                  child: Text(
                    'Breakfast kickstarts your metabolism, helping you burn calories throughout the day. Adults who report regularly eating a healthy breakfast are more likely to control their weight and their blood sugar levels',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'YOU HAVE TRACKED',
                    style:
                        TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500),
                  ),
                ),
                BreakfastAppCard(
                  foodName: 'mushroom soup',
                  numServe: '1',
                  numKCal: '210',
                ),
                BreakfastAppCard(foodName: 'burger', numServe: '2', numKCal: '150'),
                BreakfastAppCard(foodName: 'pizza', numServe: '4', numKCal: '500'),
                Padding(
                  padding: EdgeInsets.only(top: 35.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BreakfastInput()),
                        );
                      },
                      child: Text("Add more".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(35, 15, 35, 15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )))),
                ),
                Padding(padding: EdgeInsets.only(bottom: 35)),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
