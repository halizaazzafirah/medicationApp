import 'package:flutter/material.dart';
import 'package:medication_app/constant.dart';
import 'package:medication_app/drawer.dart';
//import 'package:medication_app/reminder/DayPicker.dart';
import 'package:medication_app/reminder/DosePicker.dart';
import 'package:medication_app/reminder/TimePicker.dart';
import 'package:medication_app/reminder/dayProvider.dart';
import 'package:medication_app/reminder/sound.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Drawer1(),
      ),
      appBar: AppBar(
        title: Text(
          'Set Reminder',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        backgroundColor: kPrimaryColor,
        elevation: 1,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: kBackgroundColor,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  height: size.width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Container(
                            height: size.width * 0.4,
                            width: size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Image.asset(
                            'assets/images/aspirin.png',
                            height: size.width * 0.45,
                            width: size.width * 0.45,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Days(),
                TimePicker(),
                DosePick(),
                SoundSection(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          child: FlatButton(
            color: kSecondaryColor,
            child: Text('Set Reminder'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
