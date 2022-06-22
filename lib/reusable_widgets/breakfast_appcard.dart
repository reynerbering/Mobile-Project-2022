import 'package:flutter/material.dart';

class BreakfastAppCard extends StatefulWidget {
  final foodName;
  final numServe;
  final numKCal;

  const BreakfastAppCard({
    Key? key,
    required this.foodName,
    required this.numServe,
    required this.numKCal
  }) : super(key: key);

  @override
  State<BreakfastAppCard> createState() => _BreakfastAppCardState();
}

class _BreakfastAppCardState extends State<BreakfastAppCard> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: new InkWell(
            onTap: () {
              print('tapped');
            },
            child: Stack(
              children: [
                  Container(
                    width: width / 1.28,
                    height: 70.0,
                    child: Row(
                      children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.foodName,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16.0),
                      ),
                      Text(
                        widget.numServe +
                            ' serving | ' +
                            widget.numKCal +
                            ' kcal',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 11.0),
                      ),
                    ],
                  ),
                ]
               ),
            ),
                  // Padding(padding: EdgeInsets.only(right: 145)),
                  Positioned(
                    right: 2,
                    bottom: 10,
                    child: IconButton(
                      icon: const Icon(Icons.highlight_off_rounded),
                      color: Colors.grey,
                      tooltip: 'Remove',
                      onPressed: () {
                        print('remove');
                      },
                    ),
                  ),
                  
                  
                ],
              ),
            ),
          ),
        
      ],
    );
  }
}
