import 'package:flutter/material.dart';
import 'package:myproject/Widget/Card_customer_history.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List test = [
    "Supakon",
    "Phubet",
    "Jenjira",
    "Kitipat",
    "Sorawit",
    "Miyato",
    "Hell"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ประวัติ",
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
                    return CardCustomerHistory(
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
