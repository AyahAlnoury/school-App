import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school/widgets/student_subject.dart';

class SubjectHomework extends StatelessWidget {
  const SubjectHomework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 64, 143, 135),
            title: Text("واجباتي"),
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
                  padding: const EdgeInsets.only(top: 60),
                  child:
                      Student_Subject(text: "واجبات اللغة العربية", width: 300),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Table(
                    textDirection: TextDirection.rtl,
                    defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                    border: TableBorder.all(
                        width: 2.0, color: Color.fromARGB(255, 47, 154, 145)),
                    children: [
                      TableRow(children: [
                        Text(
                          "الواجب الأول",
                          textScaleFactor: 1.5,
                        ),
                        Text(
                            " بيبلاكمتالببيرا بلاتتنىت    بفارالبغعاتةم  لفبلت ؤبيفقغلانتنة بيسيفبلانتةو ىلارفقث ",
                            textScaleFactor: 1),
                      ]),
                      TableRow(children: [
                        Text("الواجب الثاني", textScaleFactor: 1.5),
                        Text("  ", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("الواجب الثالث", textScaleFactor: 1.5),
                        Text("  ", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("الواجب الرابع", textScaleFactor: 1.5),
                        Text(" ", textScaleFactor: 1.5),
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
