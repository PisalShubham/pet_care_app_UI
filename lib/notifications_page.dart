import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<String> dateList = [
    "Today",
    "25 September",
    "15 September",
    "21 October",
    "1 September",
  ];

  List<String> iconList = [
    'assets/images/page_4/shopping_bag.png',
    'assets/images/page_4/tick.png',
    'assets/images/page_4/heart_orange.png'
  ];

  List<String> messages = [
    "Your checkout is successfull, product is on tne way",
    "Appointment request accepted",
    "Vaccinate your pet timely",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(31, 32, 41, 1),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            'assets/images/global/back_orange.png',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 19, right: 24, left: 24),
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: dateList.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 16),
            itemBuilder: (BuildContext context, int index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dateList[index],
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(31, 32, 41, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 372,
                  height: 160,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                      )
                    ],
                  ),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: iconList.length,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(252, 219, 193, 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.asset(iconList[index]),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 255,
                          height: 40,
                          child: Text(
                            messages[index],
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(31, 32, 41, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
