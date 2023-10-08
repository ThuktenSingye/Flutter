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
      body: Row(
        children: <Widget>[
          // expanded widget good for wrapping an image or contain child images
          Expanded(
            flex: 1,
            child: Image.asset('assets/ddc.jpg')),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.green,
              child: Text('One'),
            ),
          ),
          Expanded(
            flex: 2,
            child:Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('Two'),
            ),
           ),
           Expanded(
            flex: 1,
            child:  Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
           ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
  );
  }
}