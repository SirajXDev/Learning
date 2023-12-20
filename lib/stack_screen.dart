import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stacks'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Stack(
          alignment: Alignment.center,
          // fit: StackFit.expand,
          children: [
            Positioned(
              top: 200,
              // left: 200,
              child: Container(
                height: 200,
                width: 300,
                color: const Color(0xff7F7F7F),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 100,
                width: 200,
                color: const Color(0xff898832),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 100,
                width: 200,
                color: const Color(0xff66fd32),
              ),
            ),

            // AnimatedPositioned(
            //   duration:const Duration(seconds: 2),
            //     top: 200,
            //     // left: 200,
            //     child:AnimatedContainer(
            //       duration:const Duration(seconds: 3),
            //       height: 200,
            //       width: 300,
            //       color: Colors.amber,
            //     ),
            //   ),
          ],
        ));
  }
}

// class myGridItems extends StatelessWidget {
//   const myGridItems({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
//           child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10), itemCount: 12,itemBuilder: (context, index) {
//             return Container(height: 40,width: 60,child: CircleAvatar(radius: 15,child: Text("siraj",style: TextStyle(fontSize: 20),)),);
//           },),
//         ),
//       ),
//     );
//   }
