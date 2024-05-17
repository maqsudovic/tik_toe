import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> boxes = ['', '', '', '', '', '', '', '', ''];
  int counter = 0;

  String result = '';

  void onPressed(int index) {
    if (boxes[index].isEmpty && result.isEmpty) {
      boxes[index] = '❌';
      counter++;
      result = checkWin();
      if (counter < 9 && result != '❌') {
        int randomNumber = Random().nextInt(9);
        while (boxes[randomNumber].isNotEmpty) {
          randomNumber = Random().nextInt(9);
        }
        boxes[randomNumber] = '⭕️';
        counter++;
        result = checkWin();
      }
      setState(() {});
      if (result.isNotEmpty) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AlertDialog(
              title: Text("$result yutdi"),
              actions: [
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: const Text("Ok"),
                  icon: const Icon(Icons.thumb_up),
                ),
              ],
            );
          },
        );
      }
    }
  }

  String checkWin() {
    if (boxes[0] == "❌" && boxes[1] == "❌" && boxes[2] == "❌") {
      return "❌";
    } else if (boxes[3] == "❌" && boxes[4] == "❌" && boxes[5] == "❌") {
      return "❌";
    } else if (boxes[6] == "❌" && boxes[7] == "❌" && boxes[8] == "❌") {
      return "❌";
    } else if (boxes[0] == "❌" && boxes[3] == "❌" && boxes[6] == "❌") {
      return "❌";
    } else if (boxes[1] == "❌" && boxes[4] == "❌" && boxes[7] == "❌") {
      return "❌";
    } else if (boxes[2] == "❌" && boxes[5] == "❌" && boxes[8] == "❌") {
      return "❌";
    } else if (boxes[0] == "❌" && boxes[4] == "❌" && boxes[8] == "❌") {
      return "❌";
    } else if (boxes[2] == "❌" && boxes[4] == "❌" && boxes[6] == "❌") {
      return "❌";
    }

    if (boxes[0] == "⭕️" && boxes[1] == "⭕️" && boxes[2] == "⭕️") {
      return "⭕️";
    } else if (boxes[3] == "⭕️" && boxes[4] == "⭕️" && boxes[5] == "⭕️") {
      return "⭕️";
    } else if (boxes[6] == "⭕️" && boxes[7] == "⭕️" && boxes[8] == "⭕️") {
      return "⭕️";
    } else if (boxes[0] == "⭕️" && boxes[3] == "⭕️" && boxes[6] == "⭕️") {
      return "⭕️";
    } else if (boxes[1] == "⭕️" && boxes[4] == "⭕️" && boxes[7] == "⭕️") {
      return "⭕️";
    } else if (boxes[2] == "⭕️" && boxes[5] == "⭕️" && boxes[8] == "⭕️") {
      return "⭕️";
    } else if (boxes[0] == "⭕️" && boxes[4] == "⭕️" && boxes[8] == "⭕️") {
      return "⭕️";
    } else if (boxes[2] == "⭕️" && boxes[4] == "⭕️" && boxes[6] == "⭕️") {
      return "⭕️";
    }

    return "";
  }

  void restart() {
    boxes = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    result = "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Tic-Tac-Toe'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(0);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[0],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(1);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[1],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(2);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[2],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(3);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[3],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(4);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[4],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(5);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[5],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    onPressed(6);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[6],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(7);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[7],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onPressed(8);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Text(
                      boxes[8],
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    restart();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    textStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  child: Text("Reset Game")),
            ),
          ],
        ),
      ),
    );
  }
}
