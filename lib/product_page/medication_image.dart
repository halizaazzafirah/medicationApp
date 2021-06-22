import 'package:flutter/material.dart';
import 'package:medication_app/constant.dart';

class MedicationImage extends StatelessWidget {
  //const MedicationImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
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
                height: size.width * 0.8,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      height: size.width * 0.7,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Image.asset(
                      'assets/images/Lyrica.png',
                      height: size.width * 0.75,
                      width: size.width * 0.75,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Text(
                'Aspirin ',
              ),
              Text(
                'Unit of Measure: ',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
