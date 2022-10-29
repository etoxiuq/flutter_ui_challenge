import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'SearchField.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth,
        height: screenHeight * 0.18,
        margin: const EdgeInsets.only(bottom: 25),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // background
            Container(
                width: screenWidth,
                height: screenHeight * 0.20,
                decoration: BoxDecoration(
                    color: Colors.indigo[400],
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)))),

            // app bar
            Positioned(
                top: 0,
                child: Container(
                  width: screenWidth,
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.menu),
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: () {
                          Fluttertoast.showToast(msg: '메뉴클릭');
                        },
                      ),
                      const Text('Institutes',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500)),
                      IconButton(
                        icon: const Icon(Icons.sort),
                        iconSize: 25,
                        color: Colors.white,
                        onPressed: () {
                          Fluttertoast.showToast(msg: '정렬클릭');
                        },
                      )
                    ],
                  ),
                )),

            // search
            Positioned(
                bottom: -20,
                child: Container(
                  width: screenWidth,
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: RoundedTextField(
                    hintText: 'Search School',
                    icon: Icons.search,
                    color: Colors.grey[700],
                    backgroundColor: Colors.white,
                  ),
                ))
          ],
        ));
  }
}
