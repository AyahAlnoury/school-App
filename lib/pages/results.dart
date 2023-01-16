import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:school/widgets/student_subject.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 59, 130, 122),
          title: Text("الواجبات الدراسية"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "ملاحظة",
                  style: GoogleFonts.notoKufiArabic(
                      fontSize: 20, color: Colors.white),
                ),
                color: Color.fromARGB(255, 59, 130, 122),
              ),
              Text(
                "عزيزي الطالب انقر على اسم المادة لتصفح النتائج",
                style: GoogleFonts.notoKufiArabic(fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Student_Subject(width: 200, text: "الرياضيات"),
                  Student_Subject(width: 200, text: "الفيزياء"),
                  Student_Subject(width: 200, text: "الكيمياء"),
                  Student_Subject(width: 200, text: "العلوم")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
