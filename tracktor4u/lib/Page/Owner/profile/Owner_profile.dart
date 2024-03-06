import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/profile/Editing_profile.dart';
import 'package:myproject/Page/Owner/profile/result.dart';

class Owner_profile extends StatefulWidget {
  const Owner_profile({super.key});

  @override
  State<Owner_profile> createState() => _Owner_profileState();
}

class _Owner_profileState extends State<Owner_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "โปรไฟล์",
          style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditingProfile(),
                    ));
              },
              icon: const FaIcon(
                FontAwesomeIcons.pen,
                color: Colors.black,
              ))
        ],
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 50,
                    ),
                    Text(
                      "นายศุภกร ทิพย์สิงห์",
                      style: TextStyle(fontFamily: "Mali", fontSize: 17),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 0),
                              blurRadius: 4)
                        ]),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        FaIcon(
                          FontAwesomeIcons.phone,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "0962603689",
                          style: TextStyle(fontFamily: "Mali", fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 0),
                              blurRadius: 4)
                        ]),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        FaIcon(
                          FontAwesomeIcons.mapLocationDot,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "แตะเพื่อดูตำแหน่งของบ้าน",
                          style: TextStyle(fontFamily: "Mali", fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 0),
                              blurRadius: 4)
                        ]),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        FaIcon(
                          FontAwesomeIcons.earthAsia,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "400/ไร่",
                          style: TextStyle(fontFamily: "Mali", fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 0),
                              blurRadius: 4)
                        ]),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        FaIcon(
                          FontAwesomeIcons.earthAsia,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "100/งาน",
                          style: TextStyle(fontFamily: "Mali", fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 0),
                              blurRadius: 4)
                        ]),
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "ข้อมูลเพิ่มเติม",
                          style: TextStyle(fontFamily: "Mali", fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Result(),
                    ));
                  },
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(2, 0),
                              blurRadius: 4)
                        ]),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        FaIcon(
                          FontAwesomeIcons.chartSimple,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "สรุปการทำงาน",
                          style: TextStyle(fontFamily: "Mali", fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "รถไถทั้งหมด",
                            style: TextStyle(fontFamily: "Mali"),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade200,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "แก้ไขข้อมูลรถไถ",
                                style: TextStyle(
                                    fontFamily: "Mali", color: Colors.black),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 300,
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
