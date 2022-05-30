import 'package:flutter/material.dart';
import 'Secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("FlutterBeads",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        // backgroundColor: Colors.black,

        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Secondpage()),
            );
          },
          icon: Icon(Icons.account_tree_outlined),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
                left: 200,
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.redAccent,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomCenter,
                )),
            Positioned(
              top: 200,
              child: Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 100,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
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
