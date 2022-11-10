import 'package:flutter/material.dart';
import 'package:study_ui_challenge/Home.dart';

class Week3Main {
  MaterialApp week3() {
    return MaterialApp(
      title: 'Week3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
