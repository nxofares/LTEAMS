import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LSTEAMS Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Implement logout logic
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
              title: Text(contacts[index].name),
              subtitle: Text(contacts[index].phone),
              leading: CircleAvatar(
                child: Text(
                  contacts[index].name[0],
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              onTap: () {
                // Navigate to contact detail screen
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add contact screen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
