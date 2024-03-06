import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.green.shade100, // Adjust the color as needed
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
              FontAwesomeIcons.arrowLeft), // Replace with your desired icon
        ),
        title: const Text(
          "สรุปรายได้",
          style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "สรปุ เดือน .... 2566",
                    style: TextStyle(fontFamily: "Mali", fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "จำนวนงาน",
                    style: TextStyle(fontFamily: "Mali"),
                  ),
                  Text(
                    "20 งาน",
                    style: TextStyle(fontFamily: "Mali"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "จำนวนไร่",
                    style: TextStyle(fontFamily: "Mali"),
                  ),
                  Text(
                    "20 ไร่",
                    style: TextStyle(fontFamily: "Mali"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "รายได้ทั้งหมด",
                    style: TextStyle(fontFamily: "Mali"),
                  ),
                  Text(
                    "200000 บาท",
                    style: TextStyle(fontFamily: "Mali"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
