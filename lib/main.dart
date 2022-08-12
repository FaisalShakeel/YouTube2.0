// ignore_for_file: depend_on_referenced_packages, import_of_legacy_library_into_null_safe
import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sql_helper/sql_helper.dart';
import 'package:moor_flutter/moor_flutter.dart';
void main() {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  HomePage createState() {
    return HomePage();
  }
}

class HomePage extends State {
  List<String> tags = [
    "Programming",
    "Amazon Trading",
    "Graphic Designing",
    "Accounting And Finance"
  ];

  @override
  MaterialApp build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "ShopHub",
        home: Scaffold(
            appBar: AppBar(
                title: const Text("S h o p  H u b"),
                centerTitle: true,
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder()),
            body: ListView.builder(
                itemBuilder: (context, index) {
                  return (ActionChip(
                      label: Text(tags[index],
                          style: const TextStyle(letterSpacing: 3)),
                      autofocus: true,
                      onPressed: () {
                        print("User Has Selected A Category");
                      },
                      backgroundColor: Colors.grey));
                },
                itemCount: tags.length,
                scrollDirection: Axis.horizontal))));
  }
}

/*
Stateful Widgets
StatefulWidgets
Basic Widgets
Navigation And Routing
StateManagement(GetX,Provider,Riverpod,Bloc Pattern)
Google Maps(To use locations in android and IoS Apps)
SQLite,Hive And Shared Preferences(For Storing Data On Local Storage)
Networking(http,Dio)
Json Parsing

Firebase(
FirebaseAnalytics
App Check
Authentication
Cloud Firestore
Cloud Functions
Cloud Messaging
Cloud Storage
Crashlytics
Dynamic Links
In-App Messaging
Firebase installations
ML Model Downloader
Performance Monitoring
Realtime Database
Remote Config)

GraphQL
MongoDB With Flutter Using MongoDart
Payment Gateways(RazorPay,Stripe,PayG,PayTm)
GoogleMLToolkit(For ML Based Flutter Apps)
Animations
Responsive Design

Testing(Unit Testing,Integration Testing,Widget Testing)
Deployment(Uploading To AppStore And Google PlayStore)




Flutter Projects To Build In 2022:

Facebook Clone(Firebase Backend)
Instagram Clone
Tik Tok Clone
Netflix Clone
Amazon Clone
Skype Clone
SnapChat Clone
Weather App
Udemy Clone
Twitter Clone
Linked In Clone
Daraz Clone
NonApp Clone
OLX Clone
Multi Vendor Shop App
Multi Vendor Grocery App
Food Panda Clone
Travel App
Task Manager App
Telegram App Clone
What'sApp Clone App With Some Extra Functionalities
Google Drive Clone
Wallpaper App
Gmail Clone
Messages App Clone
Fiverr/upwork Clone
Uber Clone
News App
Portfolio App
Document Reader App
MS Teams Clone
Object Detection App
 */
