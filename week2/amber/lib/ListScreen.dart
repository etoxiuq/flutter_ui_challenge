import 'package:flutter/material.dart';
import 'package:week2/components/AppBar.dart';
import 'package:week2/components/SearchBar.dart';
import 'package:week2/model/School.dart';

import 'components/ListItem.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          SearchBar(),
          SizedBox(
            height: 8,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: schoolList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListItem(schoolList[index]);
            },
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ))
        ],
      ),
    );
  }
}
