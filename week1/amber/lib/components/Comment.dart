import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment(
      {Key? key,
      this.imgUrl = "",
      required this.name,
      this.role = "",
      required this.distance,
      required this.comment})
      : super(key: key);

  final String imgUrl;
  final String name;
  final String role;
  final double distance;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            SizedBox(
                width: 30,
                height: 30,
                child: ClipOval(child: Image.network(imgUrl))),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(role)
              ],
            )
          ]),
          Row(children: [
            Icon(
              Icons.pin_drop,
              color: Colors.purple,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "$distance km",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            )
          ])
        ],
      ),
      SizedBox(
        height: 24,
      ),
      Text(comment)
    ]);
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard(this.title, this.value, this.color, {Key? key})
      : super(key: key);

  final String value;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 9),
          )
        ],
      ),
    );
  }
}

class Info {
  String title;
  String value;
  Color color;

  Info(this.title, this.value, this.color);
}
