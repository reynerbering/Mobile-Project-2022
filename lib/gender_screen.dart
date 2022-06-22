import 'package:fitr/birthdate_screen.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({Key? key}) : super(key: key);

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
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
                  value: 0.4,
                  minHeight: 5,
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            Image.asset(
              'assets/images/symbol.png',
              height: 204,
              width: 208,
            ),
            const SizedBox(
              height: 46,
            ),
            const Text(
              "We need to know your sex to accurately \n calculate your daily calorie goal",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF UI Display Light',
                fontWeight: FontWeight.w300,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 41,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                minimumSize: const Size(256, 47),
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              label: const Text(
                "MALE",
                style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const BirthDateScreen()),
                );
              },
              icon: Image.asset(
                "assets/icons/male.png",
                height: 20,
                width: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                minimumSize: const Size(256, 47),
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              label: const Text(
                "FEMALE",
                style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const BirthDateScreen()),
                );
              },
              icon: Image.asset(
                "assets/icons/female.png",
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
