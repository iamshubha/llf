import 'package:flutter/material.dart';
import 'package:llf/Screens/dynamic_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.90,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DynamicPage(
                                    appbarTitle: "Ambulance",
                                  )));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text("Ambulance"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text("Ambulance"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text("Ambulance"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text("Ambulance"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text("Ambulance"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Text("Ambulance"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
