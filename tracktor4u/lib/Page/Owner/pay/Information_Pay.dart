import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/Owner_home.dart';
import 'package:myproject/Widget/Dialog_Pay_Comfirm.dart';

class InformationPay extends StatefulWidget {
  late String name;
  InformationPay({Key? key, required this.name}) : super(key: key);

  @override
  State<InformationPay> createState() => _InformationPayState();
}

class _InformationPayState extends State<InformationPay> {
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
          "รายละเอียดการชำระ",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          )
                        ],
                        color: Colors.green.shade200,
                      ),
                      child: const Flexible(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "รอชำระ",
                            style: TextStyle(fontFamily: "Mali"),
                          ),
                        ],
                      )),
                    )
                  ],
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(2, 0),
                      ),
                    ],
                    color: Colors.green.shade200,
                  ),
                  width: 250,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "ค่าจ้างรวม : ",
                        style: TextStyle(fontFamily: "Mali"),
                      ),
                      Text(
                        "25000",
                        style: TextStyle(fontFamily: "Mali"),
                      ),
                      Text(
                        "บาท",
                        style: TextStyle(fontFamily: "Mali"),
                      ),
                    ],
                  ),
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
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const PayFirm();
                        },
                      );
                    },
                    child: const Text(
                      "ยืนยันการชำระ",
                      style: TextStyle(
                          fontFamily: "Mali",
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
