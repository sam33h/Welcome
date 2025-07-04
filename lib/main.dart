import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signup/login.dart';
import 'package:signup/signup.dart';
import 'package:signup/wlcm.dart';

import 'firebase_options.dart';


void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(home: wlcm(), debugShowCheckedModeBanner: false,));
}