import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school/widgets/student_subject.dart';

final List<double> mark = [80, 70, 75, 80];

class subjectResult extends StatelessWidget {
  const subjectResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 64, 143, 135),
            title: Text("النتائج الدراسية "),
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
                      Student_Subject(text: "نتائج اللغة العربية", width: 300),
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
                          "الشفهي",
                          textScaleFactor: 1.5,
                        ),
                        Text(" ${mark[0]}", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("العملي", textScaleFactor: 1.5),
                        Text(" ${mark[1]}", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("النظري", textScaleFactor: 1.5),
                        Text(" ${mark[2]}", textScaleFactor: 1.5),
                      ]),
                      TableRow(children: [
                        Text("الامتحان", textScaleFactor: 1.5),
                        Text("${mark[3]}", textScaleFactor: 1.5),
                      ]),
                    ],
                  ),
                ),
                Text("المحصلة النهائية"),
                Student_Subject(text: "${avarage()}", width: 300)
              ],
            ),
          )),
    );
  }
}

String avarage() {
  double ans = (mark[0] + mark[1] + mark[2] + mark[3]) / 4;
  return ans.toString();
}
