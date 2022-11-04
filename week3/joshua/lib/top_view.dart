import 'package:flutter/material.dart';

class TopView extends StatefulWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  State<TopView> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Color.fromARGB(0xff, 0xE7, 0x81, 0x6D),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hello, Jane.',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Looks like feel good.\nYou have 3 takes to do today.',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'TODAY : JUL 21, 2018',
            style: TextStyle(fontSize: 13, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
