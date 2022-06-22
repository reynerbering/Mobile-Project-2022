import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BreakfastInput extends StatefulWidget {
  const BreakfastInput({Key? key}) : super(key: key);

  @override
  State<BreakfastInput> createState() => _BreakfastInputState();
}

class _BreakfastInputState extends State<BreakfastInput> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        title: Text(
          'Breakfast',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16.0),
        ),
      ),
      backgroundColor: Color(0XFFF0FCFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/checklist.png',
                  width: width / 2.5,
                  height: height / 3.5,
                ),
                SizedBox(
                  width: width / 1.35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Meal',
                    ),
                  ),
                ),
                SizedBox(
                  width: width / 1.35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Serving Size',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: width / 1.35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Kcal',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: width / 1.35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Carbs (g)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: width / 1.35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Protein (g)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: width / 1.35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Fat (g)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Track".toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(50, 15, 50, 15)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
