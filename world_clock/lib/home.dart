import 'package:flutter/material.dart';
import 'package:world_clock/location.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Home Screen'),
          centerTitle: true,
          backgroundColor: Colors.blue[500],
        ),
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChooseLocation()),
                  );
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location'),
              ),
            ],
          ),
        ),
      );
}
