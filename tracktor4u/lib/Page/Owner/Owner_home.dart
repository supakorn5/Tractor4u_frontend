import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/Page/Owner/history/history.dart';
import 'package:myproject/Page/Owner/pay/Pay.dart';
import 'package:myproject/Page/Owner/profile/Owner_profile.dart';
import 'package:myproject/Page/Owner/reserve/Customer_reserve.dart';
import 'package:myproject/Page/Owner/status/Status_working.dart';

class Owner_home extends StatefulWidget {
  const Owner_home({super.key});

  @override
  State<Owner_home> createState() => _Owner_homeState();
}

class _Owner_homeState extends State<Owner_home> {
  int _currentitem = 0;

  List<Widget> Page = [
    const Customer_reserve(),
    const Status_working(),
    const Pay(),
    const History(),
    const Owner_profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Page[_currentitem],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.0), // Adjust as needed
            topRight: Radius.circular(12.0), // Adjust as needed
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors
              .transparent, // Set BottomNavigationBar background to be transparent
          selectedLabelStyle: const TextStyle(fontFamily: "Mali"),
          unselectedLabelStyle: const TextStyle(fontFamily: "Mali"),
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.users),
              label: "ลูกค้า",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.tractor),
              label: "ทำงาน",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.moneyBill1Wave),
              label: "รอชำระ",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookOpen),
              label: "ประวัติ",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circleUser),
              label: "โปรไฟล์",
            ),
          ],
          onTap: (value) {
            setState(() {
              _currentitem = value;
            });
          },
          currentIndex: _currentitem,
        ),
      ),
    );
  }
}
