import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeTracker/app/sign_in/email_signin_page.dart';
import 'package:timeTracker/services/auth.dart';
//import 'package:timeTracker/app/sign_in/social_signin_button.dart';
import './sign_in_button.dart';

class SignInPage extends StatelessWidget {
  Future<void> _signInAnonymously(BuildContext context) async {
    final auth = Provider.of<AuthBase>(context, listen: false);
    try {
      await auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    Navigator.of(context).push(MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (context) => EmailSignInPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContainer(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContainer(BuildContext context) {
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
            height: 48,
          ),
          // ###
          // ####
          // I'll leave this as an example of using the using Opacity widget
          // to make things aling, but I don't like these services.
          //
          //
          // SizedBox(height: 8.0),
          // SocialSignInButton(
          //   assetName: 'images/google-logo.png',
          //   text: 'Sign in with Google',
          //   textColor: Colors.black87,
          //   color: Colors.white,
          //   onPressed: () {},
          // ),
          // SizedBox(height: 8.0),
          // SocialSignInButton(
          //   assetName: 'images/facebook-logo.png',
          //   text: 'Sign in with Facebook',
          //   textColor: Colors.white,
          //   color: Color(0xFF334D92),
          //   onPressed: () {},
          // ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with email',
            textColor: Colors.white,
            color: Colors.teal[700],
            onPressed: () => _signInWithEmail(context),
          ),
          SizedBox(height: 8.0),
          Text(
            'or',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SignInButton(
            text: 'Go Anonymous',
            textColor: Colors.black,
            color: Colors.lime[300],
            onPressed: () => _signInAnonymously(context),
          ),
        ],
      ),
    );
  }
}
