import 'package:flutter/material.dart';
import 'package:myproject/Widget/Card_customer_pay.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  final List test = ["Supakon", "Phubet", "Jenjira", "Kitipat", "Sorawit"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text(
          "รายการที่รอชำระเงิน",
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: test.length,
                  itemBuilder: (context, index) {
                    return CardCustomerPay(
                      name: test[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
