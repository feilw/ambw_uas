import 'package:flutter/material.dart';
import 'package:uas/details.dart';
import 'package:uas/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class LikePage extends StatefulWidget {
  // const LikePage({Key? key}) : super(key: key);
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late final String ptitle;
  late final String ppubDate;
  late final String pdescription;
  late final String pthumbnail;
  late final String plink;

  LikePage(this.ptitle, this.ppubDate, this.pdescription, this.pthumbnail,
      this.plink);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  get ptitle => null;

  get ppubDate => null;

  get pdescription => null;

  get pthumbnail => null;

  get plink => null;
  Future<void> addData() {
    return users
        .add({
          "title": ptitle,
          "pubDate": ppubDate,
          "description": pdescription,
          "thumbnail": pthumbnail,
          "link": plink,
        })
        .then((value) => print("New Like User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  // return ElevatedButton((
  //   onPressed: addData,
  //   child: Text(
  //     "Add User",
  //   ),
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Like Page"),
        backgroundColor: Color.fromARGB(255, 82, 10, 4),
      ),
      backgroundColor: Colors.red[900],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Like Page',
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => DetailsPage()),
                    );
                  }, //
                  child: Text(
                    'Next page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
