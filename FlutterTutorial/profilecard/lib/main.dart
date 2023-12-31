import 'package:flutter/material.dart';

void main () => runApp(const MaterialApp(
  home: ProfileCard(),
));

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {

  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // remove drop shadow
      ),      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // changes the state and re render the build function
          setState(() {
            level += 1;
          });
        },
        child: Icon(
          Icons.add),
          backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,), // adding space between two widget
            Text(
              'T_Singye',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,), // adding space between two widget
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,), // adding space between two widget
            Text(
              '${level}',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,), // adding vertical vspace between two widget
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,), // horizontal space
                Text(
                  'tsingye@gmail.com',
                  style: TextStyle(
                    color:Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// // statful widget is used when state of widget changes over time # dynamic Widget
// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _MyTestState(); // return state object and link to test widget
// }

// class _MyTestState extends State<Test> { // creating state object
//   int counter = 1;
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }