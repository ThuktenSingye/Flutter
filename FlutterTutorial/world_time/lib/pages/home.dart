import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                // navigate to /location route which is choose location widget
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(
                Icons.edit_location,
              ),
              label: Text('Edit Location'),
            ),
              
          ],
        ), 
        
      ), // indent the child to make it visible
    );
  }
}