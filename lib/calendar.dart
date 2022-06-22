import 'package:fitr/reusable_widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: false,

        //current date here
        title: Text(
          '7 April 2022',
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
              // do something
            },
          )
        ],
      ),
      backgroundColor: Color(0XFFF0FCFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                Padding(padding: EdgeInsets.only(top: 10)),

                Container(
                  margin: EdgeInsets.all(50),
                  child: TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 20),
                    lastDay: DateTime.utc(2040, 10, 20),
                    focusedDay: DateTime.now(),
                    calendarFormat: CalendarFormat.month,
                    
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.emoji_events,
                          color: Color(0XFF039BE5),
                          size: 40.0,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          'ACTIVE',
                          style: TextStyle(
                            fontSize: 9
                          ),  
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          '1 day',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),  
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Icon(
                          Icons.verified,
                          color: Color(0XFF039BE5),
                          size: 35.0,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          'GREEN DAYS',
                          style: TextStyle(
                            fontSize: 9
                          ),  
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          '1 / 30',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
                          ),  
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Icon(
                          Icons.monitor_weight,
                          color: Color(0XFF039BE5),
                          size: 40.0,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 9
                          ),  
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Text(
                          '+/-0.0 kg',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600
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
