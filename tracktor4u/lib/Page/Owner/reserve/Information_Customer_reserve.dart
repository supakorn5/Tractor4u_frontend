import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/Owner_home.dart';
import 'package:myproject/Widget/Dialog_workingdate_count.dart';

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
                  //backgroundImage: , ใส่รูปภาพ
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
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () => null,
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.earthAsia,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "50 ไร่",
                          style: TextStyle(
                              fontFamily: "Mali",
                              color: Colors.black,
                              fontSize: 20),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () => null,
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapLocationDot,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            "แตะดูตำแหน่งของบ้านระยะห่าง 5 กม.",
                            style: TextStyle(
                                fontFamily: "Mali",
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () => null,
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapLocationDot,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(
                            "แตะดูตำแหน่งของที่ทำงานระยะห่าง 5 กม.",
                            style: TextStyle(
                                fontFamily: "Mali",
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.green.shade200),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const Dialog_workingdate();
                            },
                          );
                        },
                        child: const Text(
                          "รับงาน",
                          style: TextStyle(
                              fontFamily: "Mali",
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.red.shade200),
                        onPressed: () {},
                        child: const Text(
                          "ไม่รับงาน",
                          style: TextStyle(
                              fontFamily: "Mali",
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
