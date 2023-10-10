import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic>? data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0.0),
          child: Column(
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  // navigate to /location route which is choose location widget
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(
                  Icons.edit_location,
                ),
                label: Text('Edit Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data?['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                data?['time'],
                style: TextStyle(
                  fontSize: 66.0,
                ),
              )
            ],
          ),
        ), 
        
      ), // indent the child to make it visible
    );
  }
}