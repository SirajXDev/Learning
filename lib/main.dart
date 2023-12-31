//import 'package:fifi/listview_builder.dart';
//import 'package:fifi/screens/radios_chec.dart';
//import 'package:fifi/screens/row_columns.dart';
//import 'package:fifi/screens/text_fields_screen.dart';
import 'package:fifi/screens/dialouges/dialoges_f.dart';
import 'package:fifi/screens/page_view.dart';
import 'package:fifi/screens/tab_bar_view.dart';
import 'package:flutter/material.dart';

void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'My App',
//
//     theme: ThemeData(
//       // brightness: Brightness.light,
//       // scaffoldBackgroundColor: Colors.blue,
//       useMaterial3: true,
//       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //
//     ),
//     // darkTheme: ThemeData(
//     //   brightness: Brightness.dark
//     // ),
//     // initialRoute: '/',
//     // routes: {
//     //   '/':(context)=>Scaffold(),
//     //   '/cont':(context)=>Container(),
//     // },
//     // locale: Locale('us_EN'),
//     home: Scaffold(),
//
//   ),
//   );
//   var gg = drd();
// }
//  drd(String? ash){
//   String? as= ash;
//   // return as!;
//   return as ?? 'yes';

  runApp(const MyApp());
}

//
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // dialogBackgroundColor: Colors.amber,
        datePickerTheme: DatePickerThemeData(
          // backgroundColor: Colors.amber,
          headerBackgroundColor: Colors.brown,
          headerHeadlineStyle: const TextStyle(color: Colors.green,fontSize: 40),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        
        useMaterial3: true,
        
      ),
      home: const TabBarScreen(),
    );
  }
}

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff707070),
      body: GridView.builder(
        itemCount: shoes.length,
        padding: const EdgeInsets.all(20),
        gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 180,crossAxisSpacing: 10,mainAxisSpacing: 10),
        // const SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 5,
        //   mainAxisSpacing: 5,
          
        // ),
        itemBuilder: (context, index) {
          return Container(
            height: 500,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(shoes[index].name),
                Text(shoes[index].price),
                Text(shoes[index].ratting),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ShoesInfo {
  String name;
  String price;
  String ratting;

  ShoesInfo({required this.name, required this.price, required this.ratting});
}

List<ShoesInfo> shoes = [
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
  ShoesInfo(name: 'Nike', price: '343', ratting: '3.4'),
];
