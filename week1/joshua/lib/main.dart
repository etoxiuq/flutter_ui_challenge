import 'package:flutter/material.dart';
import 'package:joshua/basic_info.dart';
import 'package:joshua/bottom_navigation.dart';
import 'package:joshua/profile_details.dart';
import 'package:joshua/top_view.dart';
import 'package:joshua/type_card.dart';
import 'package:joshua/utils_importer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopView(),
            TypeCard(),
            BasicInfoCard(),
            ProfileDetailsWidget(),
            // 5)
            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, left: 30.0, right: 20.0, bottom: 10.0),
              child: Text(UtilsImporter().stringUtils.feed_description,
                  style: TextStyle(
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: UtilsImporter().colorUtils.blackcolor,
                      fontSize: 15.0,
                      fontFamily: UtilsImporter().stringUtils.proxima_nova,
                      fontWeight: FontWeight.w400)),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigation());
  }
}
