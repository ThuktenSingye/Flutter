import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // used to convert json string to string
import 'package:world_time/services/world_time.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Thimphu',flag: 'germany.png', url: '/Asia/Thimphu');
    await instance.getTime();
    // setState(() {
    //   time = instance.time;
    // });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // calling parents initstate function
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}