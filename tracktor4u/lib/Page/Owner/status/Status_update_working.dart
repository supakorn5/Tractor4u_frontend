import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/status/Status_working.dart';

class StatusUpdateWorking extends StatefulWidget {
  late String name;
  StatusUpdateWorking({Key? key, required this.name}) : super(key: key);

  @override
  State<StatusUpdateWorking> createState() => _StatusUpdateWorkingState();
}

class _StatusUpdateWorkingState extends State<StatusUpdateWorking> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> imgList = [];

  void selectImage() async {
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imgList.addAll(selectedImages);
    }

    setState(() {});
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
      body: SingleChildScrollView(
        child: SafeArea(
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
                              "ทำงาน",
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
                        radius: 50,
                      ),
                      Text(
                        widget.name,
                        style: const TextStyle(
                            fontFamily: "Mali",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
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
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "รายละเอียดการค่าจ้าง",
                                style: TextStyle(
                                  fontFamily: "Mali",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
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
                                    "50",
                                    style: TextStyle(fontFamily: "Mali"),
                                  ),
                                  Text(" ไร่",
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
                                    "500",
                                    style: TextStyle(fontFamily: "Mali"),
                                  ),
                                  Text(" บาท",
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
                                  Flexible(
                                    child: Text(
                                      "25000",
                                      style: TextStyle(fontFamily: "Mali"),
                                    ),
                                  ),
                                  Text(" บาท",
                                      style: TextStyle(fontFamily: "Mali")),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "รูปภาพ",
                                  style: TextStyle(
                                      fontFamily: "Mali",
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {
                                      selectImage();
                                    },
                                    icon: const FaIcon(FontAwesomeIcons.image))
                              ],
                            ),
                          ),
                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: imgList.length,
                          //     itemBuilder: (context, index) {
                          //       return Image.file(
                          //         File(imgList[index].path),
                          //         fit: BoxFit.cover,
                          //       );
                          //     },
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade200,
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "เริ่มงาน",
                                style: TextStyle(
                                    fontFamily: "Mali",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
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
      ),
    );
    ;
  }
}
