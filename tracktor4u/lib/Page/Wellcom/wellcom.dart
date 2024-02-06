import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myproject/Page/Wellcom/Login_Page.dart';

class Wellcom_Page extends StatefulWidget {
  const Wellcom_Page({super.key});

  @override
  State<Wellcom_Page> createState() => _Wellcom_PageState();
}

class _Wellcom_PageState extends State<Wellcom_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/rice fields.png"),
                fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 180,
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Text(
                                  'TRACTOR 4 U',
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 2
                                      ..color = const Color.fromARGB(255, 50, 0,
                                          0), // Set the stroke color
                                  ),
                                ),
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "TRACTOR 4 U",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 188, 229, 142),
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 250,
              ),
              Container(
                // decoration: const BoxDecoration(boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey,
                //     blurRadius: 20,
                //     offset: Offset(0, 4),
                //   )
                // ]),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(250, 40),
                        backgroundColor:
                            const Color.fromARGB(255, 202, 238, 195)),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                    child: const Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(
                          fontFamily: "Mali",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // decoration: const BoxDecoration(boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey,
                //     blurRadius: 20,
                //     offset: Offset(0, 4),
                //   )
                // ]),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 40),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "สมัครสมาชิก",
                      style: TextStyle(
                          fontFamily: "Mali",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
