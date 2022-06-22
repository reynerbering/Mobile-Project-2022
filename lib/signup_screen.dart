import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitr/model/user_model.dart';
import 'package:fitr/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();

  //editing controller
  final firstNameEditingController = TextEditingController();
  final lastNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //first name field
    final firstNameField = TextFormField(
        autofocus: false,
        controller: firstNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value){
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("First name cannot be empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Minimum of 3 characters");
          }
          return null;
        },
        onSaved: (value){
          firstNameEditingController.text = value!;},
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon (Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),));

    //last name field
    final lastNameField = TextFormField(
        autofocus: false,
        controller: lastNameEditingController,
        keyboardType: TextInputType.name,
        validator: (value){
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("Last name cannot be empty");
          }
          return null;
        },
        onSaved: (value){
         lastNameEditingController.text = value!;},
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon (Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if(value!.isEmpty) {
            return("Enter your email");
          }
          //reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
            return ("Enter a valid email");
          }
          return null;
        },
        onSaved: (value){
          emailEditingController.text = value!;},
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon (Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),));

    //password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: true,
        validator: (value){
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password required");
          }
          if (!regex.hasMatch(value)) {
            return ("Invalid password (6 characters minimum)");
          }
        },
        onSaved: (value){
          passwordEditingController.text = value!;},
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon (Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),));

    //confirm password field
    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller: confirmPasswordEditingController,
        obscureText: true,
        validator: (value) {
          if (confirmPasswordEditingController.text !=
              passwordEditingController.text)
          {
            return "Password does not match";
          }
          return null;
        },
        onSaved: (value){
          confirmPasswordEditingController.text = value!;},
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon (Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),));

    //signup button
    final signUpButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Color (0xFF53B6FF),
        child: MaterialButton(
          padding:  EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: 180.0,
          onPressed: (){
            signUp(emailEditingController.text, passwordEditingController.text);
          },
          child:  Text("SIGN UP", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'SF UI', fontWeight: FontWeight.bold)),
        )
    );

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
        )),
        body: Center(
        child: SingleChildScrollView(
        child: Container(
        color: Colors.white,
        child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Form(
            key: _formKey,
            child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/signup.png',
                      height: 180,
                      width: 250),
                  SizedBox(height: 30),
                  Text(
                      'Create Account',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26, fontFamily: 'SF UI', letterSpacing: 0.5 )),
                  SizedBox(height: 40),
                  firstNameField,
                  SizedBox(height: 30),
                  lastNameField,
                  SizedBox(height: 30),
                  emailField,
                  SizedBox(height: 30),
                  passwordField,
                  SizedBox(height: 30),
                  confirmPasswordField,
                  SizedBox(height: 40),
                  signUpButton,
                  SizedBox(height: 40),
                  const Text(
                    'By signing up, you agree to our Terms and\nConditions and Privacy Policy' ,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'SF UI', color: Colors.grey ),
                  ),
                ],),),),),),),);}

            void signUp(String email, String password) async
            {
              if(_formKey.currentState!.validate()) {
                await _auth.createUserWithEmailAndPassword(email: email, password: password)
                    .then((value) => {
                      postDetailsToFirestore()
                }).catchError((e)
                {
                  Fluttertoast.showToast(msg: e!.message);
                });
                }
              }

              postDetailsToFirestore() async {
                //calling firestore
                //calling user model
                //sending these values

                FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
                User? user = _auth.currentUser;

                UserModel userModel = UserModel();

                //writing the values
                userModel.email = user!.email;
                userModel.uid = user.uid;
                userModel.firstName = firstNameEditingController.text;
                userModel.lastName = lastNameEditingController.text;

                await firebaseFirestore
                  .collection("users")
                  .doc(user.uid)
                  .set(userModel.toMap());
                Fluttertoast.showToast(msg: "Account created successfully!");

                Navigator.pushAndRemoveUntil((context),
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
                (route) => false);

              }
            }

