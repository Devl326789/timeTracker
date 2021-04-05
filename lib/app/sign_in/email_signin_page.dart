import 'package:flutter/material.dart';
import 'package:timeTracker/app/sign_in/email_sigin_form.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Sign In'),
        elevation: 2.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: EmailSignInForm(),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
