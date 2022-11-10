import 'package:flutter/material.dart';
import 'package:study_ui_challenge/CardItemModel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  var appColors = [
    const Color.fromRGBO(231, 129, 109, 1.0),
    const Color.fromRGBO(99, 138, 223, 1.0),
    const Color.fromRGBO(111, 194, 173, 1.0)
  ];
  var cardIndex = 0;
  late ScrollController scrollController;
  var currentColor = const Color.fromRGBO(231, 129, 109, 1.0);

  var cardsList = [
    CardItemModel("Personal", Icons.account_circle, 9, 0.83),
    CardItemModel("Work", Icons.work, 12, 0.24),
    CardItemModel("Home", Icons.home, 7, 0.32)
  ];

  late AnimationController animationController;
  late ColorTween colorTween;
  late CurvedAnimation curvedAnimation;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: currentColor,
      appBar: AppBar(
        title: const Text(
          "TODO",
          style: TextStyle(fontSize: 16.0),
        ),
        backgroundColor: currentColor,
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search),
          ),
        ],
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 64.0, vertical: 32.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Icon(
                        Icons.account_circle,
                        size: 45.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 12.0),
                      child: Text(
                        "Hello, Jane.",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Text(
                      "Looks like feel good.",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "You have 3 tasks to do today.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                  child: Text(
                    "TODAY : JUL 21, 2018",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: SizedBox(
                              width: 250.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Icon(
                                          cardsList[position].icon,
                                          color: appColors[position],
                                        ),
                                        const Icon(
                                          Icons.more_vert,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0, vertical: 4.0),
                                          child: Text(
                                            "${cardsList[position].tasksRemaining} Tasks",
                                            style: const TextStyle(
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0, vertical: 4.0),
                                          child: Text(
                                            cardsList[position].cardTitle,
                                            style:
                                                const TextStyle(fontSize: 28.0),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: LinearProgressIndicator(
                                            value: cardsList[position]
                                                .taskCompletion,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        onHorizontalDragEnd: (details) {
                          animationController = AnimationController(
                              vsync: this,
                              duration: const Duration(milliseconds: 500));
                          curvedAnimation = CurvedAnimation(
                              parent: animationController,
                              curve: Curves.fastOutSlowIn);
                          animationController.addListener(() {
                            setState(() {
                              currentColor =
                                  colorTween.evaluate(curvedAnimation)!;
                            });
                          });

                          if (details.velocity.pixelsPerSecond.dx > 0) {
                            if (cardIndex > 0) {
                              cardIndex--;
                              colorTween = ColorTween(
                                  begin: currentColor,
                                  end: appColors[cardIndex]);
                            }
                          } else {
                            if (cardIndex < 2) {
                              cardIndex++;
                              colorTween = ColorTween(
                                  begin: currentColor,
                                  end: appColors[cardIndex]);
                            }
                          }
                          setState(() {
                            scrollController.animateTo((cardIndex) * 256.0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn);
                          });

                          colorTween.animate(curvedAnimation);

                          animationController.forward();
                        },
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
