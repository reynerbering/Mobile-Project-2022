import 'package:flutter/material.dart';

class MealAppCard extends StatefulWidget {
  final imgName;
  final title;
  final recommended;
  final pageName;

  const MealAppCard({
    Key? key,
    required this.imgName,
    required this.title,
    required this.recommended,
    required this.pageName
  }) : super(key: key);

  @override
  State<MealAppCard> createState() => _MealAppCardState();
}

class _MealAppCardState extends State<MealAppCard> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 15)),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: new InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widget.pageName),
              );
            },
            child: Container(
              width: width / 1.35,
              height: 50.0,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Image.asset('assets/images/' + widget.imgName, width: 35),
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.title,
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14.0)),
                      Text('Recommended: ' + widget.recommended + ' Cal',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 10.0)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
