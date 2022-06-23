import 'dart:developer';
import 'package:flutter/material.dart';
import 'dataclass.dart';
// import 'like_page.dart';
import 'appservice.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  Service serviceAPI = Service();
  late Future<List<cData>> listData;

//  String get palamat => null;

  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    listData = serviceAPI.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home Page"),
          backgroundColor: Color.fromARGB(255, 82, 10, 4),
        ),

        backgroundColor: Colors.red[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: FutureBuilder<List<cData>>(
                future: listData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<cData> isiData = snapshot.data!;
                    return ListView.builder(
                      itemCount: isiData.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(isiData[index].ctitle),
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(isiData[index].cthumbnail),
                            ),
                            subtitle: Text(isiData[index].cdescription),
                            onTap: () {
                              showData(isiData[index].ctitle);
                            },
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return const CircularProgressIndicator();
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(45)),
              onPressed: () {
                tambahData();
              },
              child: Text("Add Data"),
            ),
          ],
        ),
      ),
    );
  }

  void tambahData() async {
    bool response = await serviceAPI.posts(
        'ptitle', 'ppubDate', 'pdescription', 'pthumbnail', 'plink');

    if (response == true) {
      setState(() {
        listData = serviceAPI.getAllData();
      });
    }
  }

  void showData(String id) async {
    cData response = await serviceAPI.getSingleData(id);
    log("data = ${response.ctitle} - ${response.ctitle}");
  }
}


              // child: Container(
              //   child: Column(
              //     children: [
              //       Text(
              //         'homepage',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       InkWell(
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             new MaterialPageRoute(
              //                 builder: (context) => LikePage()),
              //           );
              //         }, //
              //         child: Text(
              //           'Next page',
              //           style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 30,
              //             decoration: TextDecoration.none,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
