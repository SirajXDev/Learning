import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScaffoldScreen extends StatelessWidget {
   ScaffoldScreen({super.key});

   int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.green,
      appBar: PreferredSize(preferredSize:const Size.fromHeight(55) , child: Container(height: 50,color: const Color(
          0xD28E2B2B),width: double.infinity,)),
      // AppBar(
      //   leading: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_backspace,color: Colors.black,),),
      //   title: Text('Siraj'),
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   scrolledUnderElevation: 10,
      //   shadowColor: Colors.green,
      //   toolbarHeight: 150,
      //   actions: [
      //     Icon(Icons.call),
      //     Icon(Icons.message),
      //     Icon(Icons.more_vert),
      //   ],
      //   // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      //   // shape: CircleBorder(),
      //   shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
      //
      // ) ,
      //
      body: Center(child: Text('$counter'),),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(onPressed: (){
        counter++;
        if (kDebugMode) {
          print(counter);
        }
      },),
      // bottomSheet: BottomSheet(onClosing: onClosing, builder: builder),
    );
  }
}

class ScaffoldStatful extends StatefulWidget {
  const ScaffoldStatful({super.key});

  @override
  State<ScaffoldStatful> createState() => _ScaffoldStatfulState();
}

class _ScaffoldStatfulState extends State<ScaffoldStatful> {
  int counter = 0;
  late String val;
  // String vall;
  @override
  void initState() {
    
    super.initState();
    val = '';
  }

  @override
  void dispose() {
   
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    print('Build Method Recall');
    return Scaffold(
      body: Center(child: Text('$counter'),),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,),
        onPressed: (){
        counter++;
        print(counter);
        setState(() {

        });
      },),
    );
  }
}
