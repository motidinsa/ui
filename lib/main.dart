import 'package:flutter/material.dart';
import 'package:ui/rendering/measure_size.dart';
import 'package:ui/screens/account.dart';
import 'package:ui/screens/discover.dart';
import 'package:ui/screens/front.dart';
import 'package:ui/screens/login.dart';
import 'package:ui/core/globals.dart' as globals;
import 'package:ui/screens/manage_account.dart';
import './screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Stack(
        children: [
          // GridView.builder(
          //   shrinkWrap: true,
          //   padding: EdgeInsets.symmetric(horizontal: 10),
          //   physics: NeverScrollableScrollPhysics(),
          //   itemCount: 4,
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 200,
          //       childAspectRatio: 3.5 / 2,
          //       crossAxisSpacing: 5,
          //       mainAxisSpacing: 5),
          //   itemBuilder: (context, index) {
          //     return MeasureSize(
          //       onChange: (size) {
          //         globals.cardSize = size;
          //       },
          //       child: Container(
          //         color: Colors.white,
          //       ),
          //     );
          //   },
          // ),
          // SignInPage(),
          // ManageAccount()
          // Account()
          // Discover()
          Home()
        ],
      ),
    );
  }
}
