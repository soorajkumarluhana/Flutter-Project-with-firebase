import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  
  Future submit() async{
    firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Enter title"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Enter description"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Submit"))
        ],
      )),
    );
  }
}
