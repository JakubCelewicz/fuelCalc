import 'package:flutter/material.dart';
import 'package:flutter_fuel/refuels.dart';
import 'package:provider/provider.dart';
import 'screens/Home.dart';
import 'screens/Scan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Refuels>(
      create: (context) => Refuels(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/scan': (context) => Scan(),
          // When navigating to the "/second" route, build the SecondScreen widget.
        },
        home: Home(),
      ),
    );
  }
}
