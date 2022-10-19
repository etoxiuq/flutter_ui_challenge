import 'package:amber/components/Body.dart';
import 'package:amber/components/TopContent.dart';
import 'package:flutter/material.dart';

import 'components/BottomNavigation.dart';
import 'components/Comment.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: Content(),
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
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    List info = [
      Info("Age", "10 mon", Colors.orange),
      Info("Sex", "Male", Colors.yellow),
      Info("Breed", "Shiba Inu", Colors.deepOrangeAccent),
      Info("Weight", "14 kg", Colors.orangeAccent),
    ];

    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: statusBarHeight,
        ),
        const TopContent(),
        SizedBox(
          height: 16,
        ),
        Container(
          height: 70,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InfoCard(
                    info[index].title, info[index].value, info[index].color),
                separatorBuilder: (context, index) => SizedBox(
                  width: 16,
                ),
                itemCount: info.length)),
        Expanded(child: Body())
      ],
    ));
  }
}
