import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/student_subject.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _videoLesson = ["درس العلوم الساعة العاشرة صباحا مدة الدرس 45 دقيقة "];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 192, 189),
        toolbarOpacity: 1,
        title: Text(
          "اتصال الفيديو",
          style: TextStyle(fontFamily: 'Lemonada'),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Student_Subject(width: 500, text: _videoLesson[0]),
                  // style: TextStyle(
                  //   fontSize: 18,
                  //   backgroundColor: Color.fromARGB(31, 90, 189, 207),
                  // ),
                  // ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "الرجاء الدخول عند تفعيل الأيقونة",
                      style: TextStyle(
                        fontSize: 15,
                        backgroundColor: Color.fromARGB(31, 90, 189, 207),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 77,
                    width: 77,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 59, 130, 120),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            '   click   ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), //CircleAvatar
          ),
        ),
      ),
    );
    //Center
  }
}
