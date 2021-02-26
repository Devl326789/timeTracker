import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: buildContainer(),
    );
    return scaffold;
  }

  Widget buildContainer() {
    return Container(
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.orange,
            child: SizedBox(
              height: 100,
            ),
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 100,
            ),
          ),
          Container(
            color: Colors.purple,
            child: SizedBox(
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
