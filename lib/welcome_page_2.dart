import 'package:fitr/gender_screen.dart';
import 'package:fitr/how_can_we_help.dart';
import 'package:flutter/material.dart';
final bool debug = false;
class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFFF0FCFF),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 20, 30),
            ),
            SizedBox(
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: const LinearProgressIndicator(
                  backgroundColor: Color(0xFFD3D3D3),
                  value: 0.3,
                  minHeight: 5,
                ),
              ),
            ),
            Image.asset('assets/images/pc1.png'),
            Text(
              'Welcome to Fitr!',
              style: TextStyle(
                  fontFamily: 'SF UI Display',
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xFFE5E5E5),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/idea.png',
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: RowText(
                          text:
                              'To lose weight, you need to remain in a healthy calorie deficit. To gain weight, you need to exceed your calorie needs.')),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xFFE5E5E5),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/rise.png',
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: RowText(
                          text:
                              'Tracking your calories will help you reach your goal weight more effectively.'))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(0xFFE5E5E5),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/edit.png',
                            width: 25,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: RowText(
                          text:
                              'To accurately estimate your daily calorie needs, we need to know your weight, height, sex, and age.'))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(35.0),
              child: ElevatedButton(
                  onPressed: () {Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const GenderScreen()),
                  );},
                  child: Text("Continue".toUpperCase(),
                      style: TextStyle(
                          fontFamily: 'SF UI Display',
                          fontWeight: FontWeight.w700,
                          fontSize: 18)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.fromLTRB(65, 10, 65, 10)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )))),
            ),
          ],
        ),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  final String text;

  RowText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: debug ? Border.all() : null),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w300,
              fontSize: 13.0),
        ));
  }
}
