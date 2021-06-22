import 'package:flutter/material.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Text('MedicationApp'),
          ),
          ListTile(
            title: Text('My Medication'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Set Reminder'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
