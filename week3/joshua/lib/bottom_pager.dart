import 'package:flutter/material.dart';

class BottomPager extends StatefulWidget {
  const BottomPager({Key? key}) : super(key: key);

  @override
  State<BottomPager> createState() => _BottomPagerState();
}

class _BottomPagerState extends State<BottomPager> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        child: PageView.builder(
            controller: PageController(
              initialPage: 1,
              viewportFraction: 0.8,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  elevation: 5,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor:
                                  Color.fromARGB(0xff, 0xE7, 0x81, 0x6D),
                              child: Icon(
                                Icons.person,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: null, icon: Icon(Icons.more_vert))
                          ],
                        ),
                        Spacer(),
                        Text(
                          "9 Tasks",
                          style: TextStyle(color: Colors.grey, fontSize: 11),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Personal",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        LinearProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.blue),
                          backgroundColor: Colors.blue[200],
                          value: 0.9,
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
