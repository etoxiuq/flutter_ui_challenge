import "package:flutter/material.dart";
class TypeCard extends StatefulWidget {
  const TypeCard({super.key});

  @override
  State<StatefulWidget> createState() {
    return TypeCardState();
  }
}

class TypeCardState extends State<TypeCard> {

  String selectedFilter = 'bio';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10.0, left: 0.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              TypeCardUI('Bio'),
              TypeCardUI('Chip Info'),
              TypeCardUI('Features'),
            ],
          ),
          Image.asset('assets/week1/filter.png',
              width: 25,
              height: 20),
        ],
      ),
    );
  }

  Widget TypeCardUI(String title){
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {
          selectedFilter = title.toLowerCase();
        },
        child: RawChip(
            padding: const EdgeInsets.all(16),
            label: Text(
              title,
              style: TextStyle(
                  fontWeight: selectedFilter == title.toLowerCase() ? FontWeight.w500 : FontWeight.w400),
            ),
            labelStyle: TextStyle(
                color: selectedFilter == title.toLowerCase()
                    ? Colors.black
                    : Colors.black12,
                fontSize: 15.0),
            backgroundColor : Colors.white
        ),
      ),
    );
  }
}