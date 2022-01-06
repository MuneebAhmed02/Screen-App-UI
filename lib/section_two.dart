import 'package:flutter/material.dart';

class Section_two extends StatelessWidget {
  const Section_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            Section_2(
              icon: Icons.shopping_cart,
              txt: 'Colthes',
              txt2: '10 Items',
            ),
            Section_2(
              icon: Icons.electric_bike,
              txt: 'Bikes',
              txt2: '20 Items',
            ),
            Section_2(
              icon: Icons.house,
              txt: 'Household',
              txt2: '10 Items',
            ),
            Section_2(
              icon: Icons.apartment,
              txt: 'Appliances',
              txt2: '20 Items',
            ),
            Section_2(
              icon: Icons.arrow_forward,
              txt: 'Others',
              txt2: '15 Items',
            ),
          ],
        ),
      ),
    );
  }
}

class Section_2 extends StatelessWidget {
  final IconData icon;
  final String txt, txt2;
  const Section_2(
      {Key? key, required this.icon, required this.txt, required this.txt2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.110,
                  width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 40,
                            color: Colors.grey)
                      ]),

                  // color: Colors.grey,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          icon,
                          color: Colors.blueGrey,
                          size: 38,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '$txt',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '$txt2',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            )));
  }
}
