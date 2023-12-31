import 'package:flutter/material.dart';

class ListViewScreeen extends StatelessWidget {
  const ListViewScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: students.length,
        physics: const BouncingScrollPhysics(),
        // reverse: true,
        itemBuilder: (context, index) {
          return Card(
            // color: Colors.amber,
            elevation: 15,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shadowColor: Colors.green,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: ListTile(
              title: Text(students[index].name),
              subtitle: Text(students[index].fName),
              leading:
                  CircleAvatar(child: Text(students[index].age.toString())),
              trailing: Text(students[index].marks.toString()),
              contentPadding: const EdgeInsets.all(15),
              onTap: () {
                debugPrint('Card Tapperd ${students[index].name}');
              },
              textColor: Colors.red,
              // tileColor: Colors.green.withOpacity(0.4),
              style: ListTileStyle.list,
              splashColor: Colors.orange,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              minVerticalPadding: 50, horizontalTitleGap: 50,
              titleAlignment: ListTileTitleAlignment.bottom,
              visualDensity: VisualDensity.compact,
              dense: true,
            ),
          );
        },
      ),
    );
  }
}

List<String> notes = List.generate(200, (index) => 'Notes');

List<Container> cntr = [
  Container(
    height: 50,
    color: Colors.amber,
  ),
  Container(
    height: 50,
    color: Colors.green,
  ),
  Container(
    height: 50,
    color: Colors.blue,
  ),
  Container(
    height: 50,
    color: Colors.purple,
  ),
  Container(
    height: 50,
    color: Colors.orange,
  ),
  Container(
    height: 50,
    color: Colors.pink,
  ),
  Container(
    height: 50,
    color: Colors.amber,
  ),
  Container(
    height: 50,
    color: Colors.green,
  ),
  Container(
    height: 50,
    color: Colors.blue,
  ),
  Container(
    height: 50,
    color: Colors.purple,
  ),
  Container(
    height: 50,
    color: Colors.orange,
  ),
  Container(
    height: 50,
    color: Colors.pink,
  ),
];

class StudentsModel {
  final String name;
  final String fName;
  final String regNo;
  final int? marks;
  final double? age;

  StudentsModel({
    required this.name,
    required this.fName,
    required this.regNo,
    this.marks,
    this.age,
  });
}

List<StudentsModel> students = [
  StudentsModel(
    name: 'Siraj',
    fName: 'Ihsan',
    regNo: 'slasls',
    marks: 532,
    age: 23,
  ),
  StudentsModel(
    name: 'Ubaid',
    fName: 'GHulam',
    regNo: 'slsasls',
    marks: 532,
    age: 23,
  ),
  StudentsModel(
    name: 'Siraj',
    fName: 'Ihsan',
    regNo: 'slasls',
    marks: 532,
    age: 23,
  ),
  StudentsModel(
    name: 'Siraj',
    fName: 'Ihsan',
    regNo: 'slasls',
    marks: 532,
    age: 23,
  ),
];
