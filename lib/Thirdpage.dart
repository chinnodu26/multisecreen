import 'package:flutter/material.dart';
import "main.dart";

class Thirdpage extends StatefulWidget {
  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ThirdPage",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
          icon: Icon(Icons.first_page),
        ),
      ),
      body: Container(
          child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 350,
              height: 350,
              color: Colors.redAccent,
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text("Center",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
          Container(
            width: 250,
            height: 250,
            color: Colors.amberAccent,
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.bottomCenter,
            child: Text("Meddle",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.deepPurpleAccent,
            padding: const EdgeInsets.all(15.0),
            child: Text("Top",
                style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ],
      )),
    );
  }
}
