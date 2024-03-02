import 'package:flutter/material.dart';

class PayFirm extends StatefulWidget {
  const PayFirm({super.key});

  @override
  State<PayFirm> createState() => _PayFirmState();
}

class _PayFirmState extends State<PayFirm> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "ยืนยันการชำระเงิน",
        style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
      ),
      content: const Text(
        "กรุณาตรวจสอบข้อมูลให้กรบถ้วน !!!",
        style: TextStyle(fontFamily: "Mali", fontSize: 20),
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
