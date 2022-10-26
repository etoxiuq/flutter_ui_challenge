import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:study_ui_challenge/Week2/model/ListModel.dart';

class ItemTile extends StatelessWidget {
  const ItemTile(this._items, {super.key});

  final Items _items;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: ListTile(
        onTap: () => Fluttertoast.showToast(msg: _items.title),
        leading: Icon(_items.icon, size: 50),
        title: Text(_items.title,
            style: TextStyle(color: Colors.indigo[400], fontSize: 20.0)),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(Icons.location_on, color: Colors.orange, size: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(_items.address,
                        style: TextStyle(color: Colors.indigo[200]))
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const Icon(Icons.hail, color: Colors.orange, size: 20),
                Text(_items.education.str,
                    style: TextStyle(color: Colors.indigo[200]))
              ],
            )
          ],
        ),
      ),
    );
  }
}
