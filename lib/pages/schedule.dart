import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

final List<Map<String, List>> mm = [
  {
    'الأحد': ["رياضيات", "عربي"],
    'الاثنين': ["فرنسي", "علوم"],
  },
];

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 64, 143, 135),
            title: Text("جدول الحصص "),
          ),
          drawer: Drawer(),
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 50.0),
                    items: [
                      "الأحد",
                      "الاثنين",
                      "الثلاثاء",
                      "الأربعاء",
                      "الخميس"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 52, 162, 142)),
                              child: Center(
                                child: Text(
                                  '$i',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    textDirection: TextDirection.rtl,
                    defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                    border: TableBorder.all(
                        width: 2.0, color: Color.fromARGB(255, 47, 154, 145)),
                    children: [
                      TableRow(children: [
                        Text(
                          "${mm[0]}",
                          textScaleFactor: 1.5,
                        ),
                        Text(" الوقت", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("الفيزياء", textScaleFactor: 1.5),
                        Text("8:00 صباحا", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("الرياضيات", textScaleFactor: 1.5),
                        Text("9:00 صباحا", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("انكليزي", textScaleFactor: 1.5),
                        Text("11:00صباحا", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("اللغة العربية", textScaleFactor: 1.5),
                        Text("12:00 صباحا", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("الكيمياء", textScaleFactor: 1.5),
                        Text("1:00 صباحا", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("اللغة الفرنسية", textScaleFactor: 1.5),
                        Text("2:00 صباحا", textScaleFactor: 1.5),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
