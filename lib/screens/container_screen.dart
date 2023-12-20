
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  final String imge =
      'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_1280.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(
              bottom: 10,
              top: 10,
              left: 150,
              // right: 150
            ),
            // EdgeInsets.symmetric(horizontal: 150,vertical: 50)
            // EdgeInsets.all(105)
            padding: const EdgeInsets.only(left: 150),
            transform: Matrix4.rotationZ(.10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      // AssetImage(''),
                      // FileImage(File('path')),
                      NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_1280.jpg',
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  colorFilter:
                      ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
              color: Colors.green,
              // shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(10, 10),
                  blurRadius: 20,
                  spreadRadius: 1,
                  // blurStyle: BlurStyle.outer
                ),
              ],
              // border: Border.symmetric(
              //   horizontal: BorderSide(
              //     color: Colors.black,
              //     width: 3,
              //   ),
              //   vertical:  BorderSide(
              //     color: Colors.amber,
              //     width: 3,
              //   ),
              // ),
              // Border.all(
              //   color: Colors.black,
              //   width: 3,
              //   style: BorderStyle.solid,
              // ),

              // borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
              // borderRadius: BorderRadius.all(Radius.circular(20))
              // borderRadius: BorderRadius.circular(20)
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              gradient:
                  // LinearGradient(
                  //   begin: Alignment.bottomLeft,
                  //   end: Alignment.topRight,
                  //   colors: [
                  //     Colors.amber,
                  //     Colors.cyan,
                  //     Colors.brown
                  //   ],
                  // ),
                  RadialGradient(colors: [
                Colors.amber,
                Colors.cyan,
                Colors.brown,
              ]),

            ),constraints: const BoxConstraints(maxWidth: double.infinity),
            foregroundDecoration: BoxDecoration(
                // color: Colors.amber.withOpacity(0.4)
                border: Border.all(color: Colors.black)),
            // color: Colors.blue,
            child: const Center(
              child: Icon(
                Icons.flutter_dash,
                color: Colors.white,
                size: 50,
                shadows: [
                  Shadow(
                    color: Colors.amber,
                    offset: Offset(10, 10),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(
              bottom: 10,
              top: 10,
              left: 150,
              // right: 150
            ),
            // EdgeInsets.symmetric(horizontal: 150,vertical: 50)
            // EdgeInsets.all(105)
            padding: const EdgeInsets.only(left: 150),
            transform: Matrix4.rotationZ(.10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      // AssetImage(''),
                      // FileImage(File('path')),
                      NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_1280.jpg',
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  colorFilter:
                      ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
              color: Colors.green,
              // shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(10, 10),
                  blurRadius: 20,
                  spreadRadius: 1,
                  // blurStyle: BlurStyle.outer
                ),
              ],
              // border: Border.symmetric(
              //   horizontal: BorderSide(
              //     color: Colors.black,
              //     width: 3,
              //   ),
              //   vertical:  BorderSide(
              //     color: Colors.amber,
              //     width: 3,
              //   ),
              // ),
              // Border.all(
              //   color: Colors.black,
              //   width: 3,
              //   style: BorderStyle.solid,
              // ),

              // borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
              // borderRadius: BorderRadius.all(Radius.circular(20))
              // borderRadius: BorderRadius.circular(20)
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              gradient:
                  // LinearGradient(
                  //   begin: Alignment.bottomLeft,
                  //   end: Alignment.topRight,
                  //   colors: [
                  //     Colors.amber,
                  //     Colors.cyan,
                  //     Colors.brown
                  //   ],
                  // ),
                  RadialGradient(colors: [
                Colors.amber,
                Colors.cyan,
                Colors.brown,
              ]),

            ),constraints: const BoxConstraints(maxWidth: double.infinity),
            foregroundDecoration: BoxDecoration(
                // color: Colors.amber.withOpacity(0.4)
                border: Border.all(color: Colors.black)),
            // color: Colors.blue,
            child: const Center(
              child: Icon(
                Icons.flutter_dash,
                color: Colors.white,
                size: 50,
                shadows: [
                  Shadow(
                    color: Colors.amber,
                    offset: Offset(10, 10),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(
              bottom: 10,
              top: 10,
              left: 150,
              // right: 150
            ),
            // EdgeInsets.symmetric(horizontal: 150,vertical: 50)
            // EdgeInsets.all(105)
            padding: const EdgeInsets.only(left: 150),
            transform: Matrix4.rotationZ(.10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      // AssetImage(''),
                      // FileImage(File('path')),
                      NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/10/30/16/54/sew-8353303_1280.jpg',
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.low,
                  colorFilter:
                      ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
              color: Colors.green,
              // shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(10, 10),
                  blurRadius: 20,
                  spreadRadius: 1,
                  // blurStyle: BlurStyle.outer
                ),
              ],
              // border: Border.symmetric(
              //   horizontal: BorderSide(
              //     color: Colors.black,
              //     width: 3,
              //   ),
              //   vertical:  BorderSide(
              //     color: Colors.amber,
              //     width: 3,
              //   ),
              // ),
              // Border.all(
              //   color: Colors.black,
              //   width: 3,
              //   style: BorderStyle.solid,
              // ),

              // borderRadius: BorderRadius.all(Radius.elliptical(10, 10))
              // borderRadius: BorderRadius.all(Radius.circular(20))
              // borderRadius: BorderRadius.circular(20)
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              gradient:
                  // LinearGradient(
                  //   begin: Alignment.bottomLeft,
                  //   end: Alignment.topRight,
                  //   colors: [
                  //     Colors.amber,
                  //     Colors.cyan,
                  //     Colors.brown
                  //   ],
                  // ),
                  RadialGradient(colors: [
                Colors.amber,
                Colors.cyan,
                Colors.brown,
              ]),

            ),constraints: const BoxConstraints(maxWidth: double.infinity),
            foregroundDecoration: BoxDecoration(
                // color: Colors.amber.withOpacity(0.4)
                border: Border.all(color: Colors.black)),
            // color: Colors.blue,
            child: const Center(
              child: Icon(
                Icons.flutter_dash,
                color: Colors.white,
                size: 50,
                shadows: [
                  Shadow(
                    color: Colors.amber,
                    offset: Offset(10, 10),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          // Container(height: 200,width: 200,color: Colors.amber,)
        ],
      ),
    );
  }
}
