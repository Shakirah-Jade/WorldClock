import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make request
    final Uri uri =
        Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London');
    Response response = await get(uri);

    Map data = jsonDecode(response.body);
    // print(data);
    // get properties from data

    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    String urnext = offset.substring(1, 3);
    // print(datetime);
    // print(urnext);

    // create date time obj
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(urnext)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
    print('initState function');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading page'),
    );
  }
}
