import 'package:flutter/material.dart';
import 'package:school/main.dart';
import 'package:school/navBar.dart';
import 'package:school/pages/mainpage.dart';
import 'package:school/pages/schedule.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
          child: Column(children: [
            Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 60,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "اسم المستخدم",
                            suffixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            hintText: "كلمة المرور ",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.auto_stories_sharp),
                            hintText: "الصف الدراسي ",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 59, 130, 122),
                  ),
                  child: MaterialButton(
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBar(),
                          ));
                    },
                  ),
                ),
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
