import 'package:fifi/screens/row_columns.dart';
import 'package:flutter/material.dart';

class TextFScreen extends StatelessWidget {
  TextFScreen({super.key});
  final TextEditingController controller = TextEditingController();
  final focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
            focusNode: focus,
            cursorColor: Colors.amber,
            cursorWidth: 4,
            cursorHeight: 30,
            cursorOpacityAnimates: true,
            maxLength: 50,
            // maxLines: 3,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            textDirection: TextDirection.ltr,

            decoration: InputDecoration(
              hintText: 'email@gmail.com',
              hintStyle: TextStyle(
                  fontFamily: family,
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              label: Text(
                'Email',
                style: TextStyle(
                  fontFamily: family,
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              prefix: const Icon(Icons.save),
              prefixIcon: const Icon(Icons.mail),
              suffixIcon: const Icon(Icons.send),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          const TextField(),
          ElevatedButton(
              onPressed: () {
                final String name = controller.text;
             print('Name: $name');
              },
              child: const Icon(Icons.print))
        ],
      ),
    );
  }
}
