import 'package:flutter/material.dart';
import 'package:medication_app/constant.dart';
import 'package:medication_app/product_page/medication_image.dart';

// ignore: camel_case_types
class MedicationPage extends StatefulWidget {
  @override
  _MedicationPageState createState() => _MedicationPageState();
}

// ignore: camel_case_types
class _MedicationPageState extends State<MedicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        drawer: Drawer(
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
        ),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0,
          title: Text(
            'Search',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
        body: Column(
          children: [
            MedicationImage(),
          ],
        ));
  }
}
