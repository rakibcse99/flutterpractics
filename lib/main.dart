import 'dart:async';

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterpractics/DialogDeleteAccount.dart';
import 'package:flutterpractics/DialogLogout.dart';
import 'package:flutterpractics/DialogRecommendation.dart';
import 'package:flutterpractics/SearchCustomDialog.dart';

import 'ExpandableWeget.dart';
import 'MyCustomDialog.dart';

class MyListItem {
  final String imageUrl;
  final String title;
  final int badgeCount;

  MyListItem(
      {required this.imageUrl, required this.title, required this.badgeCount});
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  double _initial = 0.0;
  double _start = 0.0;

  // TODO Create updateIndicator Function
  // which update the indicator periodically
  void updateIndicator() {
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _initial = _initial + 0.01;
      });
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 1.6,
// color: Colors.amberAccent,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 150,
                            height: 250,
                            child: Image.asset(
                                'assets/images/ic_noblemarrigebannar.png'), // Replace 'assets/image1.png' with your actual image path
                          )),
                      Container(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                                'assets/images/headers.png'), // Replace 'assets/image2.png' with your actual image path
                          ))
// Adjust the space between the images as needed
                    ],
                  ),
                )),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 10),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                              'assets/images/ic_search.png'), // Replace 'assets/image2.png' with your actual image path
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Advance Search",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 10),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                              'assets/images/ic_matchs.png'), // Replace 'assets/image2.png' with your actual image path
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Recommended Matches",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ExpandableWidget(),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 10),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image.asset(
                              'assets/images/ic_settins.png'), // Replace 'assets/image2.png' with your actual image path
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Settings",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Center(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.deepPurpleAccent)),
                onPressed: () {
                  showMyCustomDialog(context);

                },
                  child: const Text(
                    "congress!!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
              ),
            ),
          ),
          Container(

            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.deepPurpleAccent)),
                onPressed: () {
                  showLogoutDialog(context);

                },
                child: const Text(
                  "logout",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
            ),
          ),
          Container(

            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.deepPurpleAccent)),
                onPressed: () {
                  showDeleteAccount(context);

                },
                child: const Text(
                  "delete !!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
            ),
          ),
          Container(
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.deepPurpleAccent)),
                onPressed: () {
                  showSearch(context);

                },
                child: const Text(
                  "search",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
            ),
          ),

          Container(
            child: Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.deepPurpleAccent)),
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                        ),
                        isDismissible: false,
                        // offline-swipable
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.75,
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Container(
                                      height: 5,
                                      width: 60,
                                      alignment: Alignment.topCenter,
                                      child: Divider(
                                        height: 5,
                                        color: Colors.black,
                                        thickness: 3,
                                      ),
                                    ),
                                    Spacer(),
                                    // Image.asset(
                                    //   "assets/images/ic_cross.png",
                                    //   height: 60,
                                    //   width: 60,
                                    // )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,
                                          right: 8,
                                          top: 8,
                                          bottom: 8),
                                      child: Image.asset(
                                        "assets/images/ic_male.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                      // child: CircleAvatar(
                                      //   radius: 50, // Adjust the radius as needed
                                      //   backgroundImage: AssetImage('assets/images/ic_male.png'), // Replace with your image asset
                                      // ),
                                    ),

                                    Expanded(

                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,

                                          children: [
                                            //  SizedBox(height: 15,),
                                            Text(
                                              "Fatha Al Shams",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "85% Profile Complete",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Container(
                                              width: 150,
                                              child: LinearProgressIndicator(
                                                value: _start,
                                                minHeight: 10.0,
                                                backgroundColor: Colors.green,
                                                valueColor:
                                                AlwaysStoppedAnimation(
                                                    Colors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                                Card(
                                    color: Colors.white,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 5),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(20),
                                              // Adjust the value to change the roundness
                                              // Change the color as needed
                                            ),
                                            height: 40,
                                            width: 40,
                                            child: CircleAvatar(
                                              radius: 56,
                                              backgroundColor: Colors.white,
                                              child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      8),
                                                  // Border radius
                                                  child: Image.asset(
                                                    'assets/images/ic_male.png',
                                                    height: 40,
                                                    width: 40,
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                            width: 3,
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 50,
                                              width: 200,
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Text("My Profile",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        fontSize: 18)),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                // SizedBox(
                                //   height: 100,
                                //   width: 10,
                                // )
                                Card(
                                  color: Colors.white,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 5),
                                  // child: Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       left: 20, right: 20, top: 10, bottom: 5),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  // Adjust the value to change the roundness
                                                  // Change the color as needed
                                                ),
                                                height: 40,
                                                width: 40,
                                                child: Image.asset(
                                                  'assets/images/ic_gallary.png',
                                                )),
                                            SizedBox(
                                              height: 10,
                                              width: 3,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Text("Photo gallary",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                                alignment: Alignment.centerLeft,
                                                height: 40,
                                                width: 40,

                                                // Border radius
                                                child: Image.asset(
                                                  'assets/images/ic_profileedit.png',
                                                )),
                                            SizedBox(
                                              height: 10,
                                              width: 3,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Text("Edit profile",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                                alignment: Alignment.centerLeft,

                                                height: 40,
                                                width: 40,
                                                child: Image.asset(
                                                  'assets/images/ic_matchespre.png',
                                                )),
                                            SizedBox(
                                              height: 10,
                                              width: 3,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 50,
                                                width: 200,
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Text(
                                                      "Match preferance",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        height: 1,
                                        color: Colors.grey,
                                        thickness: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            top: 5,
                                            bottom: 5),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 40,
                                              width: 40,
                                              // Border radius
                                              child: Image.asset(
                                                'assets/images/ic_trust.png',
                                              ),

                                            ),
                                            SizedBox(
                                              height: 10,
                                              width: 3,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 40,
                                                width: 200,
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Text("Trust badge",
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 18)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/ic_pakagebuy.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: const Text(
                    "TAP TO CHECKOUT !!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ],
      ),
    );
  }


}

void showMyCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return MyCustomDialog();
    },
  );
}

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogLogout();
    },
  );
}


void showDeleteAccount(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogDeleteAccount();
    }, 
  );
}
void showRecommendation(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogRecommendation();
    },
  );
}


void showSearch(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return SearchCustomDialog();
    },
  );
}
