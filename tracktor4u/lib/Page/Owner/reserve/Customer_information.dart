import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/Owner_home.dart';

class CustomerInformation extends StatefulWidget {
  late String name;
  CustomerInformation({Key? key, required this.name}) : super(key: key);

  @override
  State<CustomerInformation> createState() => _CustomerInformationState();
}

class _CustomerInformationState extends State<CustomerInformation> {
  late String name;

  @override
  void initState() {
    super.initState();
    name = widget.name;
  }

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
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Owner_home(),
            ));
          },
          icon: const Icon(
              FontAwesomeIcons.arrowLeft), // Replace with your desired icon
        ),
        title: const Text(
          "ข้อมูลลูกค้า",
          style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const CircleAvatar(
                  radius: 50,
                ),
                Text(
                  name,
                  style: const TextStyle(fontFamily: "Mali", fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () => null,
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.phone,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "098-0707599",
                          style: TextStyle(
                              fontFamily: "Mali",
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ],
                    )),
                ElevatedButton(
                    onPressed: () => null,
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.phone,
                          size: 15,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("50 ไร่"),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
