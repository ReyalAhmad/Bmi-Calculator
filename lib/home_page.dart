import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _cmvalue = 100;
  int age = 25;
  int weight = 65;
  bool ismale = true;
  bool isfemale = false;
  var bmi;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black26,
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            ismale = true;
                            isfemale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: ismale == true
                                ? Color(0xff455A64)
                                : Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: height * 0.12,
                                color: Colors.white,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isfemale = true;
                            ismale = false;
                          });
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              color: isfemale == true
                                  ? Color(0xff455A64)
                                  : Colors.black,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: height* 0.12,
                                  color: Colors.white,
                                ),
                                Text(
                                  "FeMale",
                                  style: TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xff455A64),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 26.0,
                          color: Colors.white54,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${_cmvalue.toInt()}",
                            style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        min: 1.0,
                        max: 300.0,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white54,
                        thumbColor: Colors.pink,
                        value: _cmvalue,
                        onChanged: (value) {
                          setState(() {
                            _cmvalue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff455A64),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight = weight - 1;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight = weight + 1;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff455A64),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              "${age}",
                              style: TextStyle(
                                fontSize: 26.0,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age = age - 1;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age = age + 1;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  bmi = weight / pow(_cmvalue / 100, 2);
                  // bmi = (weight / (_cmvalue * _cmvalue) * 10000);
                  print("pppp ${bmi}");
                  if (bmi < 18.5) {
                    result = "You are Under weight please eat more";
                  } else if (bmi < 23.5) {
                    result = "You are Normal";
                  } else {
                    result = "You are over Weight please eat less";
                  }
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                          color: Colors.transparent,
                          width: width / 4,
                          height: height / 4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Your Result :',
                                  style: TextStyle(fontSize: 30),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("${bmi}"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('$result')
                              ]),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink,
                  ),
                  width: width,
                  alignment: Alignment.center,
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? result;
}
