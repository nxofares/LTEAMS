import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _employeeIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _employeeIdController,
              decoration: InputDecoration(labelText: 'Employee ID'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String employeeId = _employeeIdController.text.trim();

                // Validate employee ID (e.g., check against a list of valid IDs)
                if (isValidEmployeeId(employeeId)) {
                  // Navigate to HomeScreen or AdminScreen based on the role
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  // Show error message or handle invalid login
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Invalid Employee ID'),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
 
