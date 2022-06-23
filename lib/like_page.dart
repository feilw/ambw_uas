import 'package:flutter/material.dart';
import 'package:uas/details.dart';
import 'package:uas/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class LikePage extends StatefulWidget {
//  const LikePage({Key? key}) : super(key: key);
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  late final String title;
  late final String pubDate;
  late final String description;
  late final String thumbnail;
  late final String link;

  LikePage(this.title, this.pubDate, this.description, this.thumbnail, this.link);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {

  
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
}
