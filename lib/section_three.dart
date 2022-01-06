import 'package:flutter/material.dart';

class Section_three extends StatefulWidget {
  const Section_three({Key? key}) : super(key: key);

  @override
  _Section_threeState createState() => _Section_threeState();
}

final size = MediaQuery;

class _Section_threeState extends State<Section_three> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Section_3('1.jpg', 'Note 20 Ultra', '20 Reviews'),
        Section_3('2.jpg', 'MacBook Pro', '10 Reviews'),
        Section_3('2.jpg', 'MacBook Air', '20 Reviews'),
        Section_3('4.jpg', 'LED Keyboard', '10 Reviews'),
        Section_3('5.jpg', 'Gaming Pc', '20 Reviews'),
        Section_3('6.jpg', 'Note 21 Ultra', '40 Reviews'),
        Section_3('7.jpg', 'Macbook M1', '30 Reviews'),
        Section_3('2.jpg', 'Macbook M+', '10 Reviews'),
        Section_3('4.jpg', 'RBG LED Keyboard', '100 Reviews'),
        Section_3('9.jpg', 'Gaming PC with Intel-i9', '20 Reviews'),
      ],
    ));
  }
}

Widget Section_3(String img, var txt, var txt2) {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 10, bottom: 8),
    child: Container(
      width: 90,
      height: 20,
      child: Column(
        children: [
          Image.asset(
            img,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5, bottom: 8),
            child: Row(
              children: [
                Text(txt,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Text(txt2,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              )),
        ],
      ),
    ),
  );
}
