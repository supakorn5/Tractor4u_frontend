import 'package:flutter/material.dart';
import 'package:myproject/Page/Owner/Owner_home.dart';

class Dialog_workingdate extends StatefulWidget {
  const Dialog_workingdate({Key? key}) : super(key: key);

  @override
  State<Dialog_workingdate> createState() => _Dialog_workingdateState();
}

class _Dialog_workingdateState extends State<Dialog_workingdate> {
  late int count = 1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "จำนวนวันที่ทำงาน",
        style: TextStyle(fontFamily: "Mali"),
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red.shade200),
            onPressed: () {
              setState(() {
                count--;
                if (count < 0) {
                  count = 0;
                }
              });
            },
            child: const Text(
              "-",
              style: TextStyle(
                  fontFamily: "Mali", fontSize: 30, color: Colors.black),
            ),
          ),
          Text(
            "$count",
            style: const TextStyle(
                fontFamily: "Mali", fontSize: 30, color: Colors.black),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.green.shade200),
            onPressed: () {
              setState(() {
                count++;
                if (count < 0) {
                  count = 0;
                }
              });
            },
            child: const Text(
              "+",
              style: TextStyle(
                  fontFamily: "Mali", fontSize: 30, color: Colors.black),
            ),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red.shade200),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "ยกเลิก",
                style: TextStyle(
                    fontFamily: "Mali", fontSize: 20, color: Colors.black),
              ),
            ),
            TextButton(
              style:
                  TextButton.styleFrom(backgroundColor: Colors.green.shade200),
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context) => const Owner_home(),
                //   ),
                // );
              },
              child: const Text(
                "ยืนยัน",
                style: TextStyle(
                  fontFamily: "Mali",
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
