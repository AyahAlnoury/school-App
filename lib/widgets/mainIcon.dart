import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navBar.dart';

class mainIcon extends StatelessWidget {
  const mainIcon(
      {Key? key,
      required this.text,
      required this.image,
      required this.page_name})
      : super(key: key);
  final String text;
  final String image;
  final page_name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 33.0),
      child: Container(
          // constraints: BoxConstraints.expand(),
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('images/bg.jpg'), fit: BoxFit.cover)),
          margin: EdgeInsets.only(left: 10, right: 10),
          // decoration: BoxDecoration(
          // color: Color.fromRGBO(166, 201, 194, 0.5),
          // border: Border.all(
          //   width: 4,
          //   color: Color.fromRGBO(166, 201, 194, 0.5),
          // ),
          // borderRadius: BorderRadius.circular(20)
          // ),
          child: Column(children: [
            Text(
              text,
              style: TextStyle(fontSize: 10),
            ),
            Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => page_name,
                          ));
                    },
                    child: const Center(
                      child: Text(
                        '      ',
                        // style: TextStyle(
                        //     color: const Color.fromARGB(255, 41, 142, 135),
                        //     fontSize: 30,
                        //     fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ))
          ])),
    );
  }
}
