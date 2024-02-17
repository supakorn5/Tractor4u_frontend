import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myproject/Page/Owner/Owner_home.dart';
import 'package:myproject/Page/Wellcom/Register_Page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                "เข้าสู่ระบบ",
                style: TextStyle(
                  fontFamily: "Mali",
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 300,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "กรอกชื่อผู้ใช้",
                    hintStyle: TextStyle(
                      fontFamily: "Mali",
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.pen,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 300,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "รหัสผ่าน",
                      hintStyle: TextStyle(
                        fontFamily: "Mali",
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(FontAwesomeIcons.key)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "คุณมีบัญชีหรือยัง ? ",
                    style: TextStyle(fontFamily: "Mali"),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register_Page(),
                            ));
                      },
                      child: const Text(
                        "สมัครสมาชิก",
                        style: TextStyle(
                            color: Color.fromARGB(255, 78, 159, 82),
                            fontFamily: "Mali",
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 40),
                      backgroundColor:
                          const Color.fromARGB(255, 202, 238, 195)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Owner_home()));
                  },
                  child: const Text(
                    "เข้าสู่ระบบ",
                    style: TextStyle(
                        fontFamily: "Mali",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
