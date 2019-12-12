import 'package:flutter/material.dart';

class RefuelForm extends StatefulWidget {
  @override
  _RefuelFormState createState() => _RefuelFormState();
}

class _RefuelFormState extends State<RefuelForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 200.0,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Fuel price'),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(labelText: 'Fuel amount'),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 200.0,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Current mileage'),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: RaisedButton(
                child: Text('+'),
              )),
            ],
          )
        ],
      ),
    );
  }
}
