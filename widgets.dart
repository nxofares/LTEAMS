import 'package:flutter/material.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LSTEAMS Home'),
        backgroundColor: AppColors.primaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Implement logout logic
            },
          ),
        ],
      ),
      body: Container(
        color: AppColors.secondaryColor,
        child: Center(
          child: Text(
            'Welcome to LSTEAMS!',
            style: TextStyle(color: AppColors.accentColor, fontSize: 24.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add contact screen
        },
        backgroundColor: AppColors.primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
