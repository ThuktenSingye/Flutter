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
      body: Center(
        // child: Text(
        //   'Hello World',
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.grey,
        //     fontFamily: 'IndieFlower'

        //   ),
        // ),
        // Images
        // child: Image(
        //   image: NetworkImage('https://images.unsplash.com/photo-1516339901601-2e1b62dc0c45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1871&q=80')
        // ),Network Image
        // child: Image(
        //   image:AssetImage('assets/ddc.jpg')
        // ),
        // the shortcut to above code is given below
        // child : Image.asset('assets/ddc.jpg'),
        // child: Image.network('https://images.unsplash.com/photo-1516339901601-2e1b62dc0c45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1871&q=80'),
        // Icons
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // ),
        // Buttons
        // there are other button like TextButton, OutlinedButton, IconButton, FloatingActionButton and dropdownButton
        child: Container(
          child: Column(
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  print('Mail Send');
                },
                icon: Icon(
                  Icons.mail,
                ),
                label: Text('Mail Me'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  elevation: MaterialStateProperty.all<double>(8.0), // Set the elevation (shadow)
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(fontSize: 18.0), // Set the text style
                  ),
                ),
              ),
              TextButton(
                onPressed: (){
                  print('You click on text button');
                }, 
                child: Text('Text Button')
              ),
              IconButton(
                onPressed: (){
                  print('You click on icon button');
                  }, 
                icon: Icon(
                  Icons.home,
                  color: Colors.red[300],
                ),
                ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
  );
  }
}