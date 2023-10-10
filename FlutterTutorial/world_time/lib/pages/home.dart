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

    // set background
    String bgImage = data?['isDayTime'] ? 'day.jpg': 'night.jpg';
    Color bgColor = data?['isDayTime']? Colors.blue : Colors.redAccent;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          // below decoration is used toset background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
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
                    color: Colors.grey[300],
                  ),
                  label: Text(
                     'Edit Location',
                      style: TextStyle(
                        color: Colors.grey[300],  
                      ),                    
                    ),

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
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data?['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ), 
        
      ), // indent the child to make it visible
    );
  }
}