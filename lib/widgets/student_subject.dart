import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Student_Subject extends StatelessWidget {
  const Student_Subject({
    Key? key,
    required this.text,
    required this.width,
  }) : super(key: key);
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Center(
        child: Container(
          width: width,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 166, 201, 194),
          ),
          child: Center(
              child: Text(
            text,
            style: GoogleFonts.notoKufiArabic(
                color: Color.fromARGB(255, 26, 70, 107), fontSize: 18),

            // style: TextStyle(
            //     color: Color.fromARGB(255, 26, 70, 107), fontSize: 30),
          )),
        ),
      ),
    );
  }
}
