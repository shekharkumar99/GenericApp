import 'package:flutter/material.dart';
//import 'package:genericapp/signup.dart';
import 'package:genericapp/login2.dart';
import 'package:genericapp/HomePage.dart';
import 'package:genericapp/registration_screen.dart';

var routes = <String, WidgetBuilder>{
  "/RegistrationScreen": (BuildContext context) => RegistrationScreen(),
  "/LoginScreen": (BuildContext context) => LoginScreen(),
  "/HomePage": (BuildContext context) => HomePage(),

};
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GENERIC APPLICATION',
      theme: ThemeData.dark(),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,);}
            
      }
      

