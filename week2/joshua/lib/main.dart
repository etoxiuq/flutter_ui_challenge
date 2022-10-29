import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<SchoolInfo> list = [
    SchoolInfo(
        name: "Edgewick School",
        address: "572 Statan NY, 12483",
        type: "Higher Secondary School"),
    SchoolInfo(
        name: "Xaviers International",
        address: "234 Roaded Kathmandu, Nepal",
        type: "Higher Secondary School"),
    SchoolInfo(
        name: "Kinder Garden",
        address: "572 Statan NY, 12483",
        type: "Play Group School"),
    SchoolInfo(
        name: "Edgewick School",
        address: "572 Statan NY, 12483",
        type: "Higher Secondary School"),
    SchoolInfo(
        name: "Edgewick School",
        address: "572 Statan NY, 12483",
        type: "Higher Secondary School"),
    SchoolInfo(
        name: "Edgewick School",
        address: "572 Statan NY, 12483",
        type: "Higher Secondary School"),
    SchoolInfo(
        name: "Edgewick School",
        address: "572 Statan NY, 12483",
        type: "Higher Secondary School"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              AppBar(
                leading: IconButton(
                    onPressed: () => {}, icon: const Icon(Icons.menu)),
                title: const Text("Institutes"),
                backgroundColor: const Color.fromARGB(0xff, 0x69, 0x6b, 0x9e),
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.filter_list))
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(0xff, 0x69, 0x6b, 0x9e),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    )),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    enableSuggestions: false,
                    onChanged: (value) => {},
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search School',
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              key: ValueKey(index),
              color: Colors.white,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListTile(
                onTap: () => {Fluttertoast.showToast(msg: list[index].name)},
                leading: const Icon(
                  Icons.lightbulb_circle_outlined,
                  size: 40,
                  color: Colors.deepOrange,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      list[index].name,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(0xff, 0x69, 0x6b, 0x9e),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.deepOrangeAccent,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          list[index].address,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(0xff, 0x69, 0x6b, 0x9e),
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.school,
                          color: Colors.deepOrangeAccent,
                          size: 20.0,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(list[index].type,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(0xff, 0x69, 0x6b, 0x9e),
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}

class SchoolInfo {
  String name;
  String address;
  String type;

  SchoolInfo({required this.name, required this.address, required this.type});
}
