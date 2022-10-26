import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<LocationInfo> list = List<LocationInfo>.generate(
      50,
      (index) => LocationInfo(
          title: "title$index", name: "name$index", age: 19 + index));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => {},
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    key: ValueKey(index),
                    color: Colors.amberAccent,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: ListTile(
                      leading: Text(
                        list[index].title,
                        style: const TextStyle(fontSize: 24),
                      ),
                      title: Text(list[index].name),
                      subtitle: Text('${list[index].age} years old'),
                    ),
                  );
                },
                itemCount: list.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationInfo {
  String title;
  String name;
  int age;

  LocationInfo({required this.title, required this.name, required this.age});
}
