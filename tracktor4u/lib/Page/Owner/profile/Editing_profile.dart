import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myproject/Widget/Dialog_Delete_Owner.dart';

class EditingProfile extends StatefulWidget {
  const EditingProfile({super.key});

  @override
  State<EditingProfile> createState() => _EditingProfileState();
}

class _EditingProfileState extends State<EditingProfile> {
  File? _image;
  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery); // or ImageSource.camera

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
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
            Navigator.pop(context);
          },
          icon: const Icon(
              FontAwesomeIcons.arrowLeft), // Replace with your desired icon
        ),
        title: const Text(
          "แก้ไขข้อมูลส่วนตัว",
          style: TextStyle(fontFamily: "Mali", fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const DeleteOwner();
                },
              );
            },
            child: const FaIcon(FontAwesomeIcons.solidTrashCan),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 50,
                child: _image == null
                    ? const Text('')
                    : ClipOval(
                        child: Image.file(
                          _image!,
                          width: 100, // Adjust the width and height as needed
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade200),
                    onPressed: () {
                      _getImage();
                    },
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.folderPlus,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "แก้ไขโปรไฟล์",
                          style: TextStyle(
                              fontFamily: "Mali", color: Colors.black),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height:
                    100, // Increase the height to a value that suits your layout
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "รหัสผ่าน",
                          style: TextStyle(fontFamily: "Mali"),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                height:
                    100, // Increase the height to a value that suits your layout
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "เบอร์โทร",
                          style: TextStyle(fontFamily: "Mali"),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                height:
                    100, // Increase the height to a value that suits your layout
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "ที่อยู่",
                          style: TextStyle(fontFamily: "Mali"),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                height:
                    100, // Increase the height to a value that suits your layout
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "ค่าจ้าง/ไร่",
                          style: TextStyle(fontFamily: "Mali"),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                height:
                    100, // Increase the height to a value that suits your layout
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "ค่าจ้าง/งาน",
                          style: TextStyle(fontFamily: "Mali"),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 320,
                height:
                    100, // Increase the height to a value that suits your layout
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                          "รายละเอียดเพิ่มเติม",
                          style: TextStyle(fontFamily: "Mali"),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .black), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Change the color to your desired color
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade200),
                      onPressed: () {},
                      child: const Text(
                        "ยืนยันการแก้ไข",
                        style:
                            TextStyle(fontFamily: "Mali", color: Colors.black),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
