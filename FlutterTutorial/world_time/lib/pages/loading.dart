import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // used to convert json string to string
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async { // this function is asyncr

    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    http.Response response = await http.get(url);
    Map data = jsonDecode(response.body);
    print('user id: ${data['userId']}');


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // calling parents initstate function
    getData();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}