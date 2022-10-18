import 'package:amber/components/AppBar.dart';
import 'package:flutter/material.dart';

class TopContent extends StatelessWidget {
  const TopContent({Key? key}) : super(key: key);

  Widget TopBackground() {
    return AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: const <Widget>[
            CustomAppBar(),
            Center(
                child: Image(
              image: AssetImage("resources/dog.png"),
              width: 300,
              height: 300,
            )),
            Positioned(
                top: 64,
                left: 24,
                child: Text(
                  "I'm Meonji",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      ),
      clipBehavior: Clip.hardEdge,
      child: TopBackground(),
    );
  }
}
