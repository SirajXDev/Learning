/*


PascalCamelCase=>For naming classes
smallCamelCase=> For Vars and Methods
snack_style_small => for naming FIles

 */

import 'package:flutter/material.dart';

class TextWidgetScreen extends StatelessWidget {
  const TextWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body:  Center(
        child: SizedBox(
// height: 200,width: 100,
          child: SingleChildScrollView(
            child: TextButton(

              onPressed: (){
                print('Button Pressed');
              },

              child:  Text(
                '''This is Text
                
                
                
                THisi hw
                Performing hot reload...
Syncing files to device sdk gphone x86...
Reloaded 1 of 691 libraries in 1,504ms (compile: 138 ms, reload: 454 ms, reassemble: 351 ms).

                
                ''',
                // maxLines: 5,
                // overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,

                style: TextStyle(

                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    // overflow: TextOverflow.ellipsis,
                    fontFamily:family,
                    // decoration: TextDecoration.underline,
                    // decorationColor: Colors.amber,
                    // decorationStyle: TextDecorationStyle.dotted,
                    // decorationThickness: 6,
                    letterSpacing: 3,
                    wordSpacing: 10,
                    fontStyle: FontStyle.italic,
                    // backgroundColor: Colors.blue,
                    shadows: const [
                      Shadow(
                        color: Colors.green,
                        blurRadius: 20,
                        offset: Offset(10, 10),
                      ),
                      Shadow(
                        color: Colors.yellow,
                        blurRadius: 20,
                        offset: Offset(-10, -10),
                      ),Shadow(
                        color: Colors.teal,
                        blurRadius: 20,
                        offset: Offset(-5, 5),
                      ),
                    ],
                  height: 02, ///For line Spacing

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


String family = 'aljs';