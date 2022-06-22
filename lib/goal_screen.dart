import 'package:fitr/how_can_we_help.dart';
import 'package:flutter/material.dart';

class GoalScreen extends StatefulWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
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
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 20, 30),
            ),
            SizedBox(
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: const LinearProgressIndicator(
                  backgroundColor: Color(0xFFD3D3D3),
                  value: 0.1,
                  minHeight: 5,
                ),
              ),
            ),
            const SizedBox(
              height: 68,
            ),
            const Text(
              "What's your goal?",
              style: TextStyle(
                  fontFamily: 'SF UI Display Medium',
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "We'll personalize recommnedations \n based on your goals",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0),
            ),
            const GoalScreenButtons(
              inputText: "Weight Loss",
              iconImage: "assets/icons/apple.png",
            ),
            const GoalScreenButtons(
              inputText: "Weight Maintenance",
              iconImage: "assets/icons/sun.png",
            ),
            const GoalScreenButtons(
              inputText: "Weight Gain",
              iconImage: "assets/icons/strong.png",
            ),
          ],
        ),
      ),
    );
  }
}

class GoalScreenButtons extends StatelessWidget {
  final String inputText;
  final String iconImage;

  const GoalScreenButtons(
      {Key? key, required this.inputText, required this.iconImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26),
      child: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              alignment: Alignment.centerLeft,
              elevation: 5,
              primary: const Color(0XFFFFFFFF),
              shadowColor: const Color(0xFF000000),
              maximumSize: const Size(374, 53),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              )),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HowCanWeHelp()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Image.asset(
                  iconImage,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  inputText,
                  style: const TextStyle(
                      fontFamily: 'SF UI Display Light',
                      fontWeight: FontWeight.w300,
                      fontSize: 16.0,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
