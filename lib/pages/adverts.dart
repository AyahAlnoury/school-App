import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school/widgets/student_subject.dart';

class Adverts extends StatefulWidget {
  const Adverts({Key? key}) : super(key: key);

  @override
  State<Adverts> createState() => _AdvertsState();
}

class _AdvertsState extends State<Adverts> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    String txt = '';
    List _Adv = [
      "i am sorry",
      " will late",
      "no have a lesson today enjoy",
      "i am sorry",
      " will late",
      "no have a lesson today enjoy",
      "i am sorry",
      " will late",
      "no have a lesson today enjoy",
      "i am sorry",
      " will late",
      "no have a lesson today enjoy"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 192, 189),
        toolbarOpacity: 1,
        title: Text(" الاعلانات", style: TextStyle(fontFamily: 'Lemonada')),
      ),
      body: Container(
        // constraints: const BoxConstraints.expand(),
        // decoration: const BoxDecoration(
        //     image: DecorationImage(image: AssetImage("assets/images/bg.jpg"))),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => ListTile(
                    onTap: () {
                      _AddAdverts(index);
                    },
                    title: Student_Subject(width: 400, text: _Adv[index]),
                    // 'advert #${_Adv[index].id}',
                  ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: _Adv.length),
        ),
      ),
    );
  }
}

void _AddAdverts(int index) async {
  // final Adv=await Navigator.pushNamed(context,
  // A.routName,
  // arguments: {});
}
