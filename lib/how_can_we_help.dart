import 'package:fitr/welcome_page_2.dart';
import 'package:fitr/welcome_screen.dart';
import 'package:flutter/material.dart';

class HowCanWeHelp extends StatefulWidget {
  const HowCanWeHelp({Key? key}) : super(key: key);

  @override
  State<HowCanWeHelp> createState() => _HowCanWeHelpState();
}

class _HowCanWeHelpState extends State<HowCanWeHelp> {
  @override
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
                  value: 0.2,
                  minHeight: 5,
                ),
              ),
            ),
            const SizedBox(
              height: 68,
            ),
            const Text(
              "How can we help?",
              style: TextStyle(
                  fontFamily: 'SF UI Display Medium',
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Select the feature you're \n interested in trying out!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'SF UI Display Light',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.0),
            ),
            const SizedBox(
              height: 26,
            ),
            const HelpButtons(
              iconName: "assets/icons/fire.png",
              primaryTitle: "Calorie Burning",
              secondaryTitle: "Manage your daily diet better",
            ),
            const HelpButtons(
              iconName: "assets/icons/runner.png",
              primaryTitle: "Activity Tracking",
              secondaryTitle: "Stay healthy and fit as you age",
            ),
            const HelpButtons(
              iconName: "assets/icons/graph.png",
              primaryTitle: "Analyses & Statistics",
              secondaryTitle: "Understand your heating habits",
            ),
            const HelpButtons(
              iconName: "assets/icons/clock.png",
              primaryTitle: "Intermittent Fasting",
              secondaryTitle: "Follow a specifc eating window",
            ),
          ],
        ),
      ),
    );
  }
}

class HelpButtons extends StatelessWidget {
  final String iconName;
  final String primaryTitle;
  final String secondaryTitle;

  const HelpButtons({
    Key? key,
    required this.iconName,
    required this.primaryTitle,
    required this.secondaryTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const WelcomePage2()),
                  );},
        child: Container(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                ),
                Image.asset(
                  iconName,
                  height: 24,
                  width: 24,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      primaryTitle,
                      style: const TextStyle(
                        fontFamily: 'SF UI Display Light',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      secondaryTitle,
                      style: const TextStyle(
                        fontFamily: 'SF UI Display Light',
                        fontWeight: FontWeight.w300,
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            width: 324,
            height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 2))
                ])),
      ),
    );
  }
}
