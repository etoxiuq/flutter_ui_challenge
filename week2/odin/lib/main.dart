import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study-list',
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const HeaderTile(),
              Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: dummyList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemTile(dummyList[index]);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
