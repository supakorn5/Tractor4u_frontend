import 'package:flutter/material.dart';
import 'package:myproject/Widget/Card_customer_reservr.dart';

class Customer_reserve extends StatefulWidget {
  const Customer_reserve({super.key});

  @override
  State<Customer_reserve> createState() => _Customer_reserveState();
}

class _Customer_reserveState extends State<Customer_reserve> {
  final List test = [
    "Supakon",
    "Phubet",
    "Jenjira",
    "Kitipat",
    "Sorawit",
    "Kiitti"
  ];

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "รายการลูกค้าที่จองคิว",
          style: TextStyle(fontFamily: "Mali"),
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
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: test.length,
              itemBuilder: (context, index) {
                return CardCustomerReserve(name: test[index]);
              },
            ))
          ],
        ),
      ),
    );
  }
}
