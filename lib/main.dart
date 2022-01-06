import 'package:flutter/material.dart';
import 'package:screen/section_two.dart';
import 'bottom.dart';
import 'section_one.dart';
import 'section_three.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce App',
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            title: Text('Ecom App UI'),
            actions: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                ],
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                heading('Items', 'More'),
                Section_one(),
                SizedBox(
                  height: 20,
                ),
                heading('More Categories', 'Click Here'),
                SizedBox(
                  height: 20,
                ),
                Section_two(),
                SizedBox(
                  height: 10,
                ),
                heading('Popular Items', 'View More'),
                Section_three(),
              ],
            ),
          ),
          bottomNavigationBar: Bottom(),
        ));
  }
}

Widget heading(String txt, String txt2) {
  return SingleChildScrollView(
      child: ListTile(
    title: Text(
      txt,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    // ignore: deprecated_member_use
    trailing: Padding(
      padding: const EdgeInsets.only(top: 6.0),
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        color: Colors.purple,
        child: Text(
          txt2,
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    ),
  ));
}
