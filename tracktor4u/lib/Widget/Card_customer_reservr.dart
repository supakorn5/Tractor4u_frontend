// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:myproject/Page/Owner/reserve/Customer_information.dart';

class CardCustomerReserve extends StatefulWidget {
  late String name;
  CardCustomerReserve({Key? key, required this.name}) : super(key: key);
  @override
  State<CardCustomerReserve> createState() => _CardCustomerReserveState();
}

class _CardCustomerReserveState extends State<CardCustomerReserve> {
  late String name;

  @override
  void initState() {
    super.initState();
    name = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => CustomerInformation(
                    name: name,
                  ),
                ));
          },
          child: Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  Text(
                    "$name",
                    style: const TextStyle(fontFamily: "Itim", fontSize: 20),
                  ),
                  const Text(
                    "2.8 ก.ม",
                    style: TextStyle(fontFamily: "Itim", fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
