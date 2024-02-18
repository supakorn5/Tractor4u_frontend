import 'package:flutter/material.dart';
import 'package:myproject/Widget/Card_customer_status.dart';

class Status_working extends StatefulWidget {
  const Status_working({super.key});

  @override
  State<Status_working> createState() => _Status_workingState();
}

class _Status_workingState extends State<Status_working> {
  final List test = ["Supakon", "Phubet", "Jenjira", "Kitipat", "Sorawit"];
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: test.length,
                itemBuilder: (context, index) {
                  return CardCustomerStatus(
                      order: index + 1, name: test[index]);
                },
              )),
            ],
          ),
        ),
      )),
    );
  }
}
