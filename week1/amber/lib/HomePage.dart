import 'package:amber/components/TopContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/BottomNavigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: const Content(),
    );
  }
}

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: statusBarHeight)),
            TopContent()
          ]
          ,
        )
    );
  }
}
