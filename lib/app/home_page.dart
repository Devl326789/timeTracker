import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeTracker/services/auth.dart';
import 'package:timeTracker/widgets/show_alert_dialog.dart';

class HomePage extends StatelessWidget {
  Future<void> _signOut(BuildContext context) async {
    final auth = Provider.of<AuthBase>(context, listen: false);
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignout(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
      context,
      title: 'Logout',
      content: 'Are you sure you want to logout?',
      cancelActionText: 'Cancel',
      defaultActionText: "Logout",
    );
    if (didRequestSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          TextButton(
            onPressed: () => _confirmSignout(context),
            child: Text(
              'Logout',
              style: TextStyle(fontSize: 18.0, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
