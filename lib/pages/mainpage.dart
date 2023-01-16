import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/pages/results.dart';
import 'package:school/pages/schedule.dart';
import 'package:school/pages/subject_homework.dart';
import 'package:school/pages/subject_result.dart';
import 'package:school/states/homestate.dart';
import 'package:school/cubits/home_cubit.dart';
import 'package:school/widgets/mainIcon.dart';

void main() {
  runApp(MyMainPage());
}

class MyMainPage extends StatelessWidget {
  MyMainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubite, HomeState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          HomeCubite number = HomeCubite.get(context);
          theme:
          ThemeData(fontFamily: "Almarai");
          return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 143, 192, 189),
                title: const Text(
                  "الرئيسية",
                  style: TextStyle(fontFamily: 'Almarai'),
                ),
              ),
              body: Container(
                  // decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage('images/bg.jpg'),
                  //         fit: BoxFit.cover)),
                  child: Column(children: [
                Row(
                  children: const [
                    mainIcon(
                        text: "الواجبات",
                        image: 'assets/images/5.jpg',
                        page_name: SubjectHomework()),
                    mainIcon(
                      text: "العلامات",
                      image: 'assets/images/3.jpg',
                      page_name: ResultsPage(),
                    ),
                    mainIcon(
                        text: "التقويم الدراسي",
                        image: 'assets/images/7.jpg',
                        page_name: ResultsPage()),
                  ],
                ),

                // Expanded(
                //   flex: 2,
                //   child:
                Row(children: const [
                  mainIcon(
                      text: "جدول الحصص",
                      image: 'assets/images/6.jpg',
                      page_name: Schedule()),
                  mainIcon(
                      text: "كتب المنهاج",
                      image: 'assets/images/7.jpg',
                      page_name: ResultsPage()),
                  mainIcon(
                      text: "الامتحانات",
                      image: 'assets/images/7.jpg',
                      page_name: ResultsPage()),
                ]),

                mainIcon(
                    text: "الأنشطة",
                    image: 'assets/images/2.jpg',
                    page_name: subjectResult()),
              ])));
        });
  }
}
