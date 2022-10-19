import 'package:amber/components/Comment.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            //TabLayout(tabController),
            Detail()
          ],
        ));
  }
}

class TabLayout extends StatelessWidget {
  const TabLayout(this.tabController, {Key? key}) : super(key: key);

  final TabController tabController;

  void onPressedFilter() {
    Fluttertoast.showToast(msg: "Filter clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // TabBar(controller: tabController, tabs: [
      //   Tab(
      //     text: "Bio",
      //   ),
      //   Tab(text: "Chip Info"),
      //   Tab(
      //     text: "Features",
      //   )
      // ]),
      Container(
        height: 48,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bio"),
            SizedBox(
              width: 4,
              height: 4,
              child: ClipOval(
                  child: Container(
                color: Colors.purple,
              )),
            )
          ],
        ),
      ),
      IconButton(
          onPressed: onPressedFilter, icon: Image.asset("resources/filter.png"))
    ]);
  }
}

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  //final TabController tabController;

  Widget createPage() {
    List info = [
      Info("Age", "10 mon", Colors.orange),
      Info("Sex", "Male", Colors.yellow),
      Info("Breed", "Shiba Inu", Colors.deepOrangeAccent),
      Info("Weight", "14 kg", Colors.orangeAccent),
    ];

    return Expanded(
        child: Column(
      children: [
        SizedBox(
          height: 16,
        ),
        // Flexible(
        //     child: ListView.separated(
        //         itemBuilder: (context, index) => InfoCard(
        //             info[index].title, info[index].value, info[index].color),
        //         separatorBuilder: (context, index) => SizedBox(
        //               width: 16,
        //             ),
        //         itemCount: info.length)),
        SizedBox(
          height: 24,
        ),
        Comment(
          imgUrl: "https://picsum.photos/200",
          name: "Jessica Smith",
          role: "Owner",
          distance: 1.3,
          comment:
              "This breed is independent, knows its own mind, and takes great pride in keeping itself clean - "
              "honestly. It is more like a cat than a dog in that way.",
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            // TabBarView(
            //     controller: tabController,
            //     children: [createPage(), createPage(), createPage()])
            createPage());
  }
}
