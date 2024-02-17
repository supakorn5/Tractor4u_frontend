import 'package:flutter/material.dart';

class Status_working extends StatefulWidget {
  const Status_working({super.key});

  @override
  State<Status_working> createState() => _Status_workingState();
}

class _Status_workingState extends State<Status_working> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "รายการลูกค้าที่จองคิว",
          style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.green.shade200, // Adjust the color as needed
          ),
        ),
      ),
    );
  }
}
