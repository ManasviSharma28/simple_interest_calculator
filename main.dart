import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");
  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);

      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Any Number ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                controller: t1,
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter Any Number ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                controller: t2,
              ),
              Padding(padding: const EdgeInsets.only(top: 40.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      child: Text("Add"),
                      color: Colors.green,
                      onPressed: doAdd),
                  MaterialButton(
                      child: Text("Sub"),
                      color: Colors.green,
                      onPressed: doSub),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      child: Text("Mul"),
                      color: Colors.green,
                      onPressed: doMul),
                  MaterialButton(
                      child: Text("Div"), color: Colors.green, onPressed: doDiv)
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 40.0)),
              Text(
                "ANSWER:$sum",
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              )
            ],
          ),
        ));
  }
}
