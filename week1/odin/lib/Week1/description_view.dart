import 'package:flutter/material.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.only(
            top: 30.0, left: 30.0, right: 30.0, bottom: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/week1/dog.png'),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Jesscia Smith',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: 5),
                    Text('Owner',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.location_on, color: Colors.lightGreen, size: 20),
                SizedBox(width : 5),
                Text('1.3Km',
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500))
              ],
            )
          ],
        ));
  }
}