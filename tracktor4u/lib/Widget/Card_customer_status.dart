import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/status/Status_update_working.dart';

class CardCustomerStatus extends StatelessWidget {
  final String name;
  final int order;

  const CardCustomerStatus({Key? key, required this.order, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: const Color.fromARGB(255, 197, 241, 244),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "คิวที่",
                        style: TextStyle(fontFamily: "Mali", fontSize: 15),
                      ),
                      Text(
                        "$order",
                        style:
                            const TextStyle(fontFamily: "Mali", fontSize: 40),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CircleAvatar(
                    radius: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontFamily: "Mali",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.calendar),
                        onPressed: () {
                          print(name);
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                Status_update_working(name: name),
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
