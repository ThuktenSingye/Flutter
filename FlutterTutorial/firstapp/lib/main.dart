import 'package:flutter/material.dart';

// void main() => runApp(
//   // widget
//   const Center(
//     child:Text(
//       'Hello World',
//       textDirection: TextDirection.ltr,
//     )
//   )
// );
void main() => runApp(const MaterialApp(
  // title: 'Flutter Tutorial',
  // home: Text('Hello world'),
  home: Home(),
));
// stateless widget is the state of widget which cannot change over time
// stateful widgets is the state of widget which can change over time
// this will enable host reload automatically and make code clean
class Home extends StatelessWidget {
  const Home({super.key});
  // this build function re runs whenever we make changes to the code hence update auto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      // if you want only padding you can use padding widget else container if you want both padding and margin
      // body:Container(
      //   // EdgeInsets.all() all padding
      //   // symmetric(ver, hor)  vertical padding, horizontal padding
      //   // fromLTRB(l, t, r, b) left, top, right, bottom // same case as margin
      //   padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      //   color: Colors.grey[400],
      //   margin: EdgeInsets.all(20.0),
      //   child: Text('Hello'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(90.0),
        child: Text('hello world'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
  );
  }
}