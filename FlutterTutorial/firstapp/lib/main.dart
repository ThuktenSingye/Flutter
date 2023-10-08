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
      body: Column(
        // main axis alignment to control vertical 
        // cross axis alignment to control horizontal
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello'),
              Text('World'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('One'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('Three'),
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