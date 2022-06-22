
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitr/signup_screen.dart';
import 'package:fitr/start_screen.dart';
import 'package:fitr/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:core';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //firebase
  final _auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {


    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
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
      },//
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon (Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),));

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
        validator: (value){
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password required");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter a valid password");
          }
        },
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon (Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
          ),));

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color (0xFF53B6FF),
      child: MaterialButton(
        padding:  EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 150.0,
        onPressed: (){
          signIn(emailController.text, passwordController.text);
        },
        child:  Text("LOGIN", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'SF UI', fontWeight: FontWeight.bold)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => StartScreen()));
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
              Image.asset('assets/images/login.png',
                  height: 200,
                  width: 250),
              SizedBox(height: 30),
              Text('Login', textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26, fontFamily: 'SF UI', letterSpacing: 0.5 )),
              SizedBox(height: 30),
              emailField,
              SizedBox(height: 30),
              passwordField,
              SizedBox(height: 40),
              loginButton,
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
              Text('No account yet? ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, fontFamily: 'SF UI', color: Colors.black38)),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Text('Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'SF UI', color: Color (0xFF53B6FF)))),
                  SizedBox(height: 50)
              ])],),),),),)));}

            //login function

            void signIn(String email, String password) async {
              if (_formKey.currentState!.validate()){
              await _auth
                  .signInWithEmailAndPassword(email: email, password: password)
                  .then((uid) => {
                    Fluttertoast.showToast(msg: "Login Successful!"),
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => WelcomeScreen())),

                  }).catchError((e){
                    Fluttertoast.showToast(msg: e!.message);
              });
                 }
                }
               }
