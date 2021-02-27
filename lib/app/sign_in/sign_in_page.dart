import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContainer(),
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 100,
            ),
          ),
          SizedBox(
            height: 8,
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
