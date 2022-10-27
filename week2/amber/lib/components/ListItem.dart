import 'package:flutter/material.dart';
import 'package:week2/model/School.dart';

import 'package:fluttertoast/fluttertoast.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.school, {Key? key}) : super(key: key);

  final School school;

  void onPressed() {
    Fluttertoast.showToast(msg: "clicked ${school.name}");
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
        elevation: 0,
        child: InkWell(
          onTap: onPressed,
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 44,
                  width: 44,
                  decoration: ShapeDecoration(
                    shape: CircleBorder(
                        side:
                            BorderSide(color: Colors.pink.shade200, width: 2)),
                  ),
                  child: Icon(
                    Icons.stadium,
                    color: Colors.pinkAccent,
                  )),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    school.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade400),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  IconText(Icons.location_pin, school.location),
                  SizedBox(
                    height: 6,
                  ),
                  IconText(Icons.school, school.category),
                ],
              )
            ],
          ),
        )));
  }
}

class IconText extends StatelessWidget {
  const IconText(this.icon, this.str, {Key? key}) : super(key: key);

  final IconData icon;
  final String str;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.redAccent.shade100,
          size: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          str,
          style: TextStyle(color: Colors.deepPurple.shade400, fontSize: 11),
        )
      ],
    );
  }
}
