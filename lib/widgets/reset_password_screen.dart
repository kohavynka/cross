import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Enter your email'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (emailController.text.isEmpty) {
                  _showAlertDialog(context, 'Please enter your email.');
                }
              },
              child: Text('Reset Password'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Return to sign in screen
              },
              child: Text('Back to Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
void _showAlertDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Error'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}

