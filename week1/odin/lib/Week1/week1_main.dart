import 'package:flutter/material.dart';
import 'package:study_ui_challenge/Week1/description_view.dart';
import 'package:study_ui_challenge/Week1/horizontal_list_view.dart';
import 'package:study_ui_challenge/Week1/tab_view.dart';
import 'package:study_ui_challenge/Week1/top_view.dart';
import 'bottom_navigation.dart';

class Week1Main {
  MaterialApp week1() {
    return MaterialApp(
      title: 'Study',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: const <Widget>[
              TopView(),
              TypeCard(),
              BasicInfoCard(),
              ProfileDetailsWidget(),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: 30.0, right: 20.0, bottom: 10.0),
                child: Text(
                    '''This breed is independent, knows its own mind, and takes great pride in keeping itself clean - honestly, it is more like a cat than a dog in that way.''',
                    style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
      ),
    );
  }
}
