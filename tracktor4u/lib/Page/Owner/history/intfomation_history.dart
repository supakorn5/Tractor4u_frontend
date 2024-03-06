import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/Owner_home.dart';

class InformationHistory extends StatefulWidget {
  late String name;
  InformationHistory({Key? key, required this.name}) : super(key: key);

  @override
  State<InformationHistory> createState() => _InformationHistoryState();
}

class _InformationHistoryState extends State<InformationHistory> {
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
          "รายละเอียดประวัติ",
          style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                    ),
                    Text(
                      widget.name,
                      style: const TextStyle(
                          fontFamily: "Mali",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "หลักฐานการชำระเงิน",
                      style: TextStyle(fontFamily: "Mali"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 300,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "รูปภาพ",
                      style: TextStyle(
                          fontFamily: "Mali", fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
