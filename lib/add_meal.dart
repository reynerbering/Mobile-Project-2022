import 'package:fitr/input_breakfast.dart';
import 'package:fitr/reusable_widgets/addmeal_appcard.dart';
import 'package:fitr/reusable_widgets/bottom_navbar.dart';
import 'package:fitr/reusable_widgets/track.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddMeal extends StatefulWidget {
  @override
  State<AddMeal> createState() => _AddMealState();
}

class _AddMealState extends State<AddMeal> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
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
          'Add a meal', 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500, 
            fontSize: 16.0
          ),
        ),
      ),
      body: SafeArea(
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
                'assets/images/eat.png',
                width: width / 2,
                height: height / 4,
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              MealAppCard(
                  imgName: 'breakfast.png',
                  title: 'Add breakfast',
                  recommended: '479',
                  pageName: BreakfastInput(),  
                ),
              MealAppCard(
                  imgName: 'fried-rice.png',
                  title: 'Add lunch',
                  recommended: '639',
                  pageName: BreakfastInput(),    
                ),
              MealAppCard(
                  imgName: 'dinner.png',
                  title: 'Add dinner',
                  recommended: '399',
                  pageName: BreakfastInput(),    
                ),
              MealAppCard(
                  imgName: 'tea.png', 
                  title: 'Add snack', 
                  recommended: '80',
                  pageName: BreakfastInput(),    
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
