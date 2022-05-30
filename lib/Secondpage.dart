import 'package:flutter/material.dart';
import 'package:multiscreen/Thirdpage.dart';
import "Thirdpage.dart";

class Secondpage extends StatefulWidget {
  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Secondpage",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Thirdpage()),
            );
          },
          icon: Icon(Icons.account_tree_outlined),
        ),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 50,
              left: 50,
              height: 150,
              width: 150,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("red",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 100,
              height: 150,
              width: 150,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("purple",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.purple,
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 150,
              height: 150,
              width: 150,
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Text("Yellow",
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
