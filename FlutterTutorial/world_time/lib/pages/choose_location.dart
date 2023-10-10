import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async { // this function is asyncr
   // Simulate network request for a username
  // This will be called after 3 seconds
    Future<String> username = Future.delayed(Duration(seconds: 3), () {
      return 'singye';
    });
  
    // Simulate network request to get bio for username
    // This will be called after 2 seconds
    Future<String> bio = Future.delayed(Duration(seconds: 2), () {
      return 'Vega, musician & egg collector';
    });

    // Wait for both username and bio to complete
    String usernameResult = await username;
    String bioResult = await bio;

    print('$usernameResult - $bioResult');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // calling parents initstate function
    getData();
    print('hey there');
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose the Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body:Text('Choose the location'),
    );
  }
}