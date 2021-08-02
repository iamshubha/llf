import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DynamicPage extends StatefulWidget {
  final String appbarTitle;
  const DynamicPage({required this.appbarTitle, Key? key}) : super(key: key);

  @override
  _DynamicPageState createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  final _fdb = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: FutureBuilder<DocumentSnapshot>(
          future: _fdb.collection("Ambulance24x7").doc("Ambulance24").get(),
          builder: (context, snapshot) {
            final data = snapshot.connectionState == ConnectionState.done
                ? snapshot.data!.data() as Map<String, dynamic>
                : {};
            return snapshot.connectionState == ConnectionState.done
                ? Container(
                  padding: EdgeInsets.all(25.0),
                    child: ExpansionTile(
                      backgroundColor: Colors.white,
                      title: Text("Bypass Area"),
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                          child: ListView.builder(
                              itemCount: data['Kolkata'].length,
                              itemBuilder: (context, index) {
                                return Text("$index   ----   " +
                                    "${data['Kolkata'][index]}");
                              }),
                        ),
                      ],
                    ),
                  )
                : Center(child: CircularProgressIndicator());
          }),
    );
  }
}
