import 'package:flutter/material.dart';

class Section_one extends StatelessWidget {
  const Section_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: <Widget>[
          Section_1(
            image: 'assets/1.jpg',
            title: 'S20 Ultra',
            description: '23 Reviews',
          ),
          Section_1(
              image: 'assets/2.jpg',
              title: 'MacBook Air',
              description: '10 Reviews'),
          Section_1(
              image: 'assets/7.jpg',
              title: 'MacBook Pro',
              description: '20 Reviews'),
          Section_1(
              image: 'assets/4.jpg',
              title: 'LED Keyboard',
              description: '100 Reviews'),
          Section_1(
              image: 'assets/5.jpg',
              title: 'Gaming Pc',
              description: '40 Reviews'),
        ]),
      ),
    );
  }
}

class Section_1 extends StatelessWidget {
  const Section_1({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
      width: size.width * 0.35,
      // height: size.height * 0.,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(color: Colors.grey, boxShadow: [
                BoxShadow(
                    offset: Offset(3, 1), blurRadius: 40, color: Colors.grey)
              ]),
              child: Column(
                children: <Widget>[
                  Text(
                    '$title'.toUpperCase(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Text(
                            '$description',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
