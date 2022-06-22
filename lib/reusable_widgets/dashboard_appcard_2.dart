import 'package:flutter/material.dart';

class DashboardAppCard2 extends StatefulWidget {
  const DashboardAppCard2({Key? key}) : super(key: key);

  @override
  State<DashboardAppCard2> createState() => _DashboardAppCard2State();
}

class _DashboardAppCard2State extends State<DashboardAppCard2> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: new InkWell(
        onTap: () {
          print('WEIGHT');
        },
        child: Container(
          width: 170,
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1.5,
                spreadRadius: 0.5,
                offset: Offset(0, 2)
              )
            ]
          ),
        ),
      ),
    );
  }
}
