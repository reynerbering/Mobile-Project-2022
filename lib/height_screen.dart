import 'package:fitr/weight_screen.dart';
import 'package:flutter/material.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
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
              "How tall are you?",
              style: TextStyle(
                  fontFamily: 'SF UI Display Medium',
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your height is also crucial for calculating \n your ideal calorie intake and macros",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0),
            ),

            //REDIRECT BUTTON
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
                  MaterialPageRoute(builder: (context) => const WeightScreen()),
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
