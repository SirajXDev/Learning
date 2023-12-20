import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialougesInFlutter extends StatefulWidget {
  const DialougesInFlutter({super.key});

  @override
  State<DialougesInFlutter> createState() => _DialougesInFlutterState();
}

class _DialougesInFlutterState extends State<DialougesInFlutter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  // DateTime? _dateTime = DateTime(2000,5,25,20,59);
  DateTime? _date = DateTime.now();
  TimeOfDay? _time = const TimeOfDay(
    hour: 12,
    minute: 55,
  );

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

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
           
          ],
        ),
      ),
    );
  }
}
