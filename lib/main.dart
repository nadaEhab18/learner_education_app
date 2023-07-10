import 'package:flutter/material.dart';
import 'package:learner_education_app/screens/add_gurdian.dart';
import 'package:learner_education_app/screens/childernStaff_screen.dart';
import 'package:learner_education_app/screens/children.dart';
import 'package:learner_education_app/screens/notNotification.dart';
import 'package:learner_education_app/screens/fees_screen.dart';
import 'package:learner_education_app/screens/welcome_screen.dart';
import 'package:learner_education_app/screens/noSubjectAdded.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:


      WelcomeScreen(),
      // FeesScreen()
      //  AddGurdian_Screen(),
     //NoSubjectAdded_Screen(),
      //ChildrenStaff_Screen()
     //Children(),
      //NotNotificationFounded(),
    );
  }
}


