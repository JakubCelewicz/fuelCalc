import 'package:flutter/material.dart';
import 'package:flutter_fuel/widgets/refuel_form.dart';
import 'package:flutter_fuel/widgets/RefuelList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fuel costs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RefuelForm(),
            Expanded(
              child: RefuelList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('start paragon scan');
          Navigator.pushNamed(context, '/scan');
        },
        tooltip: 'Add from photo',
        child: Icon(Icons.photo_camera),
      ),
    );
  }
}
