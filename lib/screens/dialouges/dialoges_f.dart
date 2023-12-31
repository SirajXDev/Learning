
import 'package:flutter/material.dart';



class DialougesInFlutter extends StatefulWidget {
  const DialougesInFlutter({super.key});

  @override
  State<DialougesInFlutter> createState() => _DialougesInFlutterState();
}

class _DialougesInFlutterState extends State<DialougesInFlutter>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller;

  // DateTime? _dateTime = DateTime(2000,5,25,20,59);
  DateTime? _date = DateTime.now();
  TimeOfDay? _time = const TimeOfDay(
    hour: 12,
    minute: 55,
  );
  String? value = 'This is String Value';

  @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialouges in Flutter'),
      ),
      // bottomSheet: BottomSheet(
      //   animationController: _controller,
      //   showDragHandle: true,

      //   onClosing: () {

      //   },
      //   builder: (context) => Center(child: Text('Bottom Sheet'),)
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.teal,
                  elevation: 50,
                  builder: (context) {
                    return const Center(
                      child: Column(
                        children: [
                          Text('This is Bottom Sheet'),
                          Divider(
                            thickness: 5,
                            color: Colors.amber,
                          ),
                          Text('After Open Sheet'),
                        ],
                      ),
                    );
                  },
                );
              },
              color: Colors.amber,
              child: const Text('Show Bottom Sheet'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(_date.toString()),
            ElevatedButton(
              onPressed: () async {
                _date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2024, 12, 31),
                  fieldHintText: 'Change Date',
                  fieldLabelText: 'Ok Date',
                  helpText: 'Let see',
                );
                setState(() {});
              },
              child: const Text('Pick Date'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(_time.toString()),
            ElevatedButton(
              onPressed: () async {
                _time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                setState(() {});
              },
              child: const Text('Time Date'),
            ),
            const Divider(),
            Text(value ?? ''),
            ElevatedButton(
              onPressed: () {
                showAdaptiveDialog(
                  context: context,
                  builder: (context) => AlertDialog.adaptive(
                    title: const Text('Change Value'),
                    // titlePadding: EdgeInsets.all(100),
                    titleTextStyle: const TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    contentTextStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    actionsAlignment: MainAxisAlignment.start,
                    content:
                        const Text('Are you Sure to change the value of Strin'),
                    insetAnimationCurve: Curves.easeIn,
                    icon: const Icon(Icons.chair),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    shadowColor: Colors.red,

                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      IconButton(
                        onPressed: () {
                          value = 'Value has been changed';
                          setState(() {});
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.change_circle),
                      )
                    ],
                  ),
                );
              },
              child: const Text('Show Dialouge'),
            ),
            TextButton(
              onPressed: () {
     
              },
              child: const Text('show toast'),
            )
          ],
        ),
      ),
    );
  }
}
