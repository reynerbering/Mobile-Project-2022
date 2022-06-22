import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  final head;
  final headColor;
  final bgColor;
  final progressColor;
  final value;
  final gram1;
  final gram2;
  final gramsColor;

  const Track(
      {Key? key,
      required this.head,
      required this.headColor,
      required this.bgColor,
      required this.progressColor,
      required this.value,
      required this.gram1,
      required this.gram2,
      required this.gramsColor
      })
      : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Column(
      children: [
        Text(widget.head,
            style: TextStyle(
                // color: Color(0XFFA39E9E),
                color: widget.headColor,
                fontWeight: FontWeight.w600,
                fontSize: 10.0)),
        Padding(padding: EdgeInsets.only(bottom: 5)),
        SizedBox(
          width: width / 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              // backgroundColor: Color(0xFFD3D3D3),
              backgroundColor: widget.bgColor,
              // color: Color(0XFF0093FF),
              color: widget.progressColor,
              value: widget.value,
              minHeight: 3,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0, 5, 115, 0)),
        Text(
          widget.gram1 + ' / ' + widget.gram2 + ' g',
          style: TextStyle(
              // color: Color(0XFFA39E9E),
              color: widget.gramsColor,
              fontWeight: FontWeight.w500,
              fontSize: 9.0),
        ),
      ],
    );
  }
}
