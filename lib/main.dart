import 'package:flutter/material.dart';
import 'package:wasteproject/screens/HomePage.dart';
import 'package:wasteproject/screens/spinKit.dart';
import 'package:wasteproject/userprofile/CollectorInfo.dart';
import 'package:wasteproject/userprofile/History.dart';
import 'package:wasteproject/userprofile/Request.dart';
import 'package:wasteproject/userprofile/userprofile.dart';
import 'package:wasteproject/widgets/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      home: const Spinkit(),
      routes: {
        '/profile': (context) => const UserProfile(),
        '/history': (context) => const CollectorsListPage(),
        '/request': (context) => const RequestPage(),

      },
    );
  }
}

final ThemeData lightMode = ThemeData(
  primarySwatch: Colors.orange,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
