import 'package:flutter/material.dart';
import 'package:timeTracker/widgets/form_submit_button.dart';

class EmailSignInForm extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submit() {
    print(
        "email: ${_emailController.text}, Password: ${_passwordController.text}");
  }

  List<Widget> _buildChildren() {
    return [
      TextField(
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'Test@test.com',
          labelText: 'Email',
        ),
      ),
      SizedBox(height: 8.0),
      TextField(
        controller: _passwordController,
        autocorrect: false,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(labelText: 'Password'),
      ),
      SizedBox(height: 8.0),
      FormSubmitButton(
        text: 'Sign in',
        onPressed: _submit,
      ),
      SizedBox(height: 8.0),
      TextButton(
        onPressed: _submit,
        child: Text('Need and account? Register'),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
