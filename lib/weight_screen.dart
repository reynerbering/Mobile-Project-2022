import 'package:fitr/dashboard.dart';
import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({Key? key}) : super(key: key);

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
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
              "Your Current Weight",
              style: TextStyle(
                  fontFamily: 'SF UI Display Medium',
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "It’s okay to guess. You can always adjust \n your starting weight later",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0),
            ),

            // DASHBOARD REDIRECT DOCUMENTATION
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
                  MaterialPageRoute(builder: (context) => const Dashboard()),
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
