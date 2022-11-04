import 'package:flutter/material.dart';
import 'package:joshua/bottom_pager.dart';
import 'package:joshua/top_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0xff, 0xE7, 0x81, 0x6D),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0xff, 0xE7, 0x81, 0x6D),
          elevation: 0,
          leading: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          title: const Text('TODO'),
          centerTitle: true,
        ),
        body: Container(
          color: const Color.fromARGB(0xff, 0xE7, 0x81, 0x6D),
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [TopView(), BottomPager()],
          ),
        ),
      ),
    );
  }
}
