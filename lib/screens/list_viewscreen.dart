import 'package:flutter/material.dart';

class ListViewScreeen extends StatefulWidget {
  const ListViewScreeen({super.key});

  @override
  State<ListViewScreeen> createState() => _ColumnState();
}

class _ColumnState extends State<ListViewScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: const Color.fromARGB(255, 53, 25, 179),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              // physics: const NeverScrollableScrollPhysics(),
              // physics: BouncingScrollPhysics(),
              // physics: AlwaysScrollableScrollPhysics(),
              // physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              children: [
                const CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.green,
                  child: Center(
                    child: Text('A'),
                  ),
                ),
                
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 2, 65, 116),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 2, 65, 116),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 2, 65, 116),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 2, 65, 116),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
