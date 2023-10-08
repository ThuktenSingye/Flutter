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
        // similar to flex layout in css
        // main axis property to control horizontal alignment  
        // cross axis property to control vertical alignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Hello world'),
          ElevatedButton(
            onPressed: () {
              print('You Click ');
            }, 
            child: Text('Click Me'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            ),
            ),
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('inside container'),
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