import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8),
            child: Text('This works!'),
          );
        },
        itemCount: 2,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Firestore.instance
              .collection('chats/PGt0l6m5PI7a5WFSF3Ab/messages')
              .snapshots()
              .listen((data) {
            print(data);
            ;
          });
        },
      ),
    );
  }
}
