import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/history/intfomation_history.dart';

class CardCustomerHistory extends StatefulWidget {
  late String name;
  CardCustomerHistory({Key? key, required this.name}) : super(key: key);

  @override
  State<CardCustomerHistory> createState() => _CardCustomerHistoryState();
}

class _CardCustomerHistoryState extends State<CardCustomerHistory> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InformationHistory(
                    name: widget.name,
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
                    widget.name,
                    style: const TextStyle(fontFamily: "Kanit", fontSize: 20),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(FontAwesomeIcons.flagCheckered),
                      Text(
                        "เสร็จแล้ว",
                        style: TextStyle(fontFamily: "Mali"),
                      )
                    ],
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
