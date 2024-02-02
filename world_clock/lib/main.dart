import 'package:flutter/material.dart';
import 'package:world_clock/home.dart';
import 'package:world_clock/loading.dart';

// import 'package:world_clock/loading.dart';
// import 'package:world_clock/location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Loading(),
      );
}
