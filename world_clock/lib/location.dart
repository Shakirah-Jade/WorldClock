import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'JADE';
    });

    String other = await Future.delayed(Duration(seconds: 2), () {
      return 'RUBY';
    });

    print('$name - $other');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('initState function');
  }

  @override
  Widget build(BuildContext context) {
    //print('buid function');

    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your location'),
        centerTitle: true,
        backgroundColor: Colors.red[500],
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
