import 'package:flutter/material.dart';

class DashboardAppCard1 extends StatefulWidget {
  final meal;
  final pageName;
  final img;
  final calNum;
  final calNum2;

  const DashboardAppCard1(
      {Key? key,
      required this.meal,
      required this.pageName,
      required this.img,
      required this.calNum,
      required this.calNum2})
      : super(key: key);

  @override
  State<DashboardAppCard1> createState() => _DashboardAppCard1State();
}

class _DashboardAppCard1State extends State<DashboardAppCard1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widget.pageName
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 1.5,
                        spreadRadius: 0.5,
                        offset: Offset(0, 2))
                  ]),
              width: 170,
              height: 109.86,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(20, 15, 20, 25)),
                  Image.asset(
                    widget.img,
                    width: 25,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          widget.calNum + ' Cal',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Recommended: ' + widget.calNum2 + ' Cal',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 100,
          child: Container(
            alignment: Alignment.center,
            width: 64,
            height: 14.71,
            decoration: BoxDecoration(
              color: Color(0XFF367CFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Text(
              widget.meal,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
