import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _employeeIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LSTEAMS Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/LEOSTEAMS BOOK.png', 
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _employeeIdController,
              decoration: InputDecoration(
                labelText: 'Employee ID',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
