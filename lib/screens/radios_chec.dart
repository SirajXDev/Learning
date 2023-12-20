import 'package:flutter/material.dart';

class RadiosAndCheckSceen extends StatefulWidget {
  const RadiosAndCheckSceen({super.key});

  @override
  State<RadiosAndCheckSceen> createState() => _RadiosAndCheckSceenState();
}

class _RadiosAndCheckSceenState extends State<RadiosAndCheckSceen> {
  String gender = '';
  List<String> education = ['SSC'];
  bool ssc = false;
  bool hssc = false;
  bool grad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radios Button'),
        
      ),
      body: Column(
        children: [
          AppButton(
            text: 'Hello',
            onTap: () {
              print('Hello Button is Pressed');
            },
          ),
          Text('Gender: $gender'),
          Row(
            children: [
              Radio(
                value: 'Male',
                groupValue: gender,
                onChanged: (value) {
                  gender = value.toString();
                  setState(() {});
                  print(gender);
                },
              ),
              const Text('<Male>'),
              Radio(
                value: 'FeMale',
                groupValue: gender,
                fillColor: MaterialStateProperty.all(Colors.green),
                focusColor: Colors.purple,
                activeColor: Colors.amber,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                splashRadius: 50,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                  print(gender);
                },
              ),
              const Text('<FeMale>')
            ],
          ),
          Text('Education: ${education.toString()}'),
          Row(
            children: [
              Checkbox(
                value: education.contains('SSC'),
                checkColor: Colors.green,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.yellow),
                activeColor: Colors.green,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                side: const BorderSide(width: 1, color: Colors.green),
                onChanged: (value) {
                  if (value == true) {
                    education.add('SSC');
                  } else {
                    education.remove('SSC');
                  }
                  ssc = !ssc;
                  setState(() {});
                  print(education);
                },
              ),
              const Text('SSC')
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: hssc,
                onChanged: (value) {
                  if (value == true) {
                    education.add('HSSC');
                  } else {
                    education.remove('HSSC');
                  }
                  hssc = !hssc;
                  setState(() {});
                  print(education);
                },
              ),
              const Text('HSSC')
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: grad,
                onChanged: (value) {
                  if (value == true) {
                    education.add('BS');
                  } else {
                    education.remove('BS');
                  }
                  grad = !grad;
                  setState(() {});
                  print(education);
                },
              ),
              const Text('Graduate')
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // setState(() {
              //   gender = '';
              //   education = [];
              //   ssc = false;
              //   hssc = false;
              //   grad = false;
              // });
              print(education.contains('SSC'));
            },
            child: const Text('Reset'),
          ),
          InkWell(
            onTap: () {
              print('OnTap');
            },
            onLongPress: () {
              print('ONLongPress');
            },
            onDoubleTap: () {
              print('OnDoubleTap');
            },
            child: Container(
              height: 65,
              width: 200,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 5, 68),
                  border: Border.all(width: 1, color: Colors.green),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  )),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          AppButton(
            text: 'Simple',
            onTap: () {
             debugPrint('Simple Button is Pressed');
            },
          ),
        ],
      ),
    );
  }
}

class AppButton extends StatelessWidget {
 const  AppButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 65,
        width: 200,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 5, 68),
            border: Border.all(width: 1, color: Colors.green),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
