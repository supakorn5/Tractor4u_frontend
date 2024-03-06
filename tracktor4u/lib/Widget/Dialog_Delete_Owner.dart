import 'package:flutter/material.dart';

class DeleteOwner extends StatefulWidget {
  const DeleteOwner({super.key});

  @override
  State<DeleteOwner> createState() => _DeleteOwnerState();
}

class _DeleteOwnerState extends State<DeleteOwner> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "ท่านต้องการลบบัญชี",
        style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
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
              onPressed: () {},
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
