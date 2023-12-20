import 'package:flutter/material.dart';

String family = 'Ephesis';

class RowsColumnsScreen extends StatelessWidget {
  const RowsColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'RowsAndColumns',
          style: TextStyle(fontFamily: family),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'THis is Local Text,THis is Local Text',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.red),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text('This is Aligned'),
          ),
          const Text('THis is Local Text'),
          const Text('THis is Local Text'),
          const Text('THis is Local Text'),
          const Text('THis is Local Text'),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 2, 46, 82),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 2, 46, 82),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 2, 46, 82),
                    borderRadius: BorderRadius.circular(20)),
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(20),
                //   child: Image.asset(
                //     'assets/camera.jpg',
                //     fit: BoxFit.cover,
                //   ),
                // ),
                // child: Image(image: AssetImage('assets/camera.jpg',)),
              ),
              const Text('THis'),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 146, 189, 224),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/camera.jpg',
                      ),
                      fit: BoxFit.cover,
                    )),
                child: const Column(
                  children: [
                    Text('data'),
                    Text('Center'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
