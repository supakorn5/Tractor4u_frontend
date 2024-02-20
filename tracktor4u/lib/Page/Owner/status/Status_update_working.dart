import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/status/Status_working.dart';

class Status_update_working extends StatefulWidget {
  late String name;
  Status_update_working({Key? key, required this.name}) : super(key: key);

  @override
  State<Status_update_working> createState() => _Status_update_workingState();
}

class _Status_update_workingState extends State<Status_update_working> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Status_working(),
            ));
          },
          icon: const Icon(
              FontAwesomeIcons.arrowLeft), // Replace with your desired icon
        ),
        title: const Text(
          "อัพเดทงาน",
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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                            "รอดำเนินการ",
                            style: TextStyle(fontFamily: "Mali"),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          fontFamily: "Mali",
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            Text(
                              "รายละเอียดการค่าจ้าง",
                              style: TextStyle(
                                fontFamily: "Mali",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "พื้นที่ : ",
                                  style: TextStyle(fontFamily: "Mali"),
                                ),
                                Text(
                                  "50 ",
                                  style: TextStyle(fontFamily: "Mali"),
                                ),
                                Text("ไร่",
                                    style: TextStyle(fontFamily: "Mali")),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "ค่าจ้าง : ",
                                  style: TextStyle(fontFamily: "Mali"),
                                ),
                                Text(
                                  "50",
                                  style: TextStyle(fontFamily: "Mali"),
                                ),
                                Text("บาท",
                                    style: TextStyle(fontFamily: "Mali")),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "ค่าจ้างรวม : ",
                                  style: TextStyle(fontFamily: "Mali"),
                                ),
                                Text(
                                  "25000",
                                  style: TextStyle(fontFamily: "Mali"),
                                ),
                                Text("บาท",
                                    style: TextStyle(fontFamily: "Mali")),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "เริ่ม",
                              style: TextStyle(fontFamily: "Mali"),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
