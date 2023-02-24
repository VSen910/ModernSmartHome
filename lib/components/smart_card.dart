import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartCard extends StatefulWidget {
  const SmartCard({Key? key}) : super(key: key);

  @override
  State<SmartCard> createState() => _SmartCardState();
}

class _SmartCardState extends State<SmartCard> {
  bool isToggledOn = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      color: Color.fromARGB(44, 164, 167, 189),
      child: Container(
        height: 200,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/light-bulb.png',
              height: 80,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Smart\nLight',
                    style: TextStyle(fontSize: 16),
                  ),
                  Transform.rotate(
                    angle: pi/2,
                    child: CupertinoSwitch(
                      value: isToggledOn,
                      onChanged: (value) {
                        setState(() {
                          isToggledOn = !isToggledOn;
                        });
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
