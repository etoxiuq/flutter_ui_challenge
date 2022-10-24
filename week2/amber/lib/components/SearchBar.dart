import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  var keyword = "";

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              color: Colors.indigoAccent)),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: const [
                  SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Search School"),
                  )),
                  SizedBox(
                    width: 16,
                  ),
                ],
              )))
    ]);
  }
}
