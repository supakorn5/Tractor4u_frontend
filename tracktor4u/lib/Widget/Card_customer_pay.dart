import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/pay/Information_Pay.dart';

class CardCustomerPay extends StatefulWidget {
  late String name;
  CardCustomerPay({Key? key, required this.name}) : super(key: key);

  @override
  State<CardCustomerPay> createState() => _CardCustomerPayState();
}

class _CardCustomerPayState extends State<CardCustomerPay> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GestureDetector(
          onTap: () {
            // Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => CustomerInformation(
            //         name: name,
            //       ),
            //     ));
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontFamily: "",
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => InformationPay(
                                name: widget.name,
                              )));
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.moneyBillWave),
                        Text(
                          "รอชำระ",
                          style: TextStyle(fontFamily: "Itim"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
