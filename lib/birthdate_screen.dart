import 'package:flutter/material.dart';

class BirthDateScreen extends StatefulWidget {
  const BirthDateScreen({Key? key}) : super(key: key);

  @override
  State<BirthDateScreen> createState() => _BirthDateScreenState();
}

class _BirthDateScreenState extends State<BirthDateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(30, 10, 20, 30),
            ),
            SizedBox(
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: const LinearProgressIndicator(
                  backgroundColor: Color(0xFFD3D3D3),
                  value: 0.5,
                  minHeight: 5,
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            const Text(
              "Date of Birth",
              style: TextStyle(
                  fontFamily: 'SF UI Display Medium',
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "We need your age to accurately calculate \n your daily calorie goal",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0),
            ),
            
          ],
        ),
      ),
    );
  }
}
