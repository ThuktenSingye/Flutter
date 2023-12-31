import 'package:http/http.dart' as http;
import 'dart:convert'; // us
import 'package:intl/intl.dart';
class WorldTime{
  String location; // location name for the UI
  late String time;  // time of that location
  String flag; // url to an asset flag icon 
  String url; // location url for api endpoint
  bool isDayTime= false;
  WorldTime({
    required this.location,
    required this.flag,
    required this.url
  });
  Future<void> getTime() async { // this function is async

  try{
    http.Response response = await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    // get properties
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    // create Datetime Object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    isDayTime = now.hour > 6 && now.hour < 14 ? true: false;

    // set time property
    time = DateFormat.jm().format(now);
    // time = now.toString();
  }catch(e){
    print('caught error: $e');
    time = 'could not get time data';
  }
 
  }

}
