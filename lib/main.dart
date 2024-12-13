import 'package:flutter/material.dart';
import 'package:travelapp/Screens/adds_one_screen.dart';
import 'package:travelapp/Screens/passengers_info.dart';
import 'package:travelapp/Screens/sucessfully_screen.dart';

import 'Screens/boarding_point_screen.dart';
import 'Screens/boat_screen.dart';

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
      initialRoute: '/', // Default starting screen
      routes: {
        '/': (context) => const BoardingPointScreen(),
        '/boatscreen': (context) => const BoatScreen(),
        '/passengers': (context) => const PassengersDetails(),
        '/passengersinfo': (context) => const PassengersInfo(),
        '/sucessful': (context) => const SuccessfullyScreen()
      },
    );
  }
}
