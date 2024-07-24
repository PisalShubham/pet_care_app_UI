import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  // Doctor Details
  List<List<String>> drDetails = [
    ["Experience", "11 years"],
    ["Price", "\$250"],
    ["Location", "2.5 Km"],
  ];

  // Days
  List<String> days = [
    "Fri, 6",
    "Sat 7",
    "Sun 8",
    "Mon, 9",
    "Tue 10",
    "Wed 11",
    "Thu, 12"
  ];

  // Time
  List<String> time = ["09.00", "15.00", "19.00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
            color: const Color.fromRGBO(255, 255, 255, 1),
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
            'assets/images/global/back_white.png',
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
          width: 328,
          height: 150,
          child: Image.asset(
            'assets/images/page_6/image.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 30.5),
        Container(
          // height: double.infinity,
          // width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Dr. Anna Jhonason",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Veterinary Behavioral",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(194, 195, 204, 1),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            // Details
            SizedBox(
              height: 62,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: drDetails.length,
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                itemBuilder: (context, index) => Container(
                  width: 110,
                  height: 65,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        offset: Offset(0, 11),
                        blurRadius: 25,
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    itemCount: drDetails[index].length - 1,
                    itemBuilder: (context, i) => Column(
                      children: [
                        Text(
                          drDetails[index][i],
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(31, 32, 41, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          drDetails[index][++i],
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // About
            Text(
              "About",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              width: 372,
              height: 40,
              child: Text(
                "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
                style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(194, 195, 204, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Availabel Days
            Row(
              children: [
                Text(
                  "Available Days",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 90),
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 18,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                const SizedBox(width: 6),
                Text(
                  "October, 2023",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(194, 195, 204, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                separatorBuilder: (context, index) => const SizedBox(width: 5),
                itemBuilder: (context, index) => Container(
                  width: 65,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                        color: const Color.fromRGBO(245, 146, 69, 1)),
                  ),
                  child: Text(
                    days[index],
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(49, 29, 14, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Availabel Time

            Text(
              "Available Time",
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: time.length,
                separatorBuilder: (context, index) => const SizedBox(width: 5),
                itemBuilder: (context, index) => Container(
                  width: 65,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    border: Border.all(
                        color: const Color.fromRGBO(245, 146, 69, 1)),
                  ),
                  child: Text(
                    time[index],
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(49, 29, 14, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 46),
            // Button 1
            GestureDetector(
              child: Container(
                width: 372,
                height: 38,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(252, 219, 193, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/page_6/map.png'),
                  const SizedBox(width: 2),
                  Text(
                    "See Location",
                    style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(163, 97, 46, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 10),
            // Button 2
            GestureDetector(
              child: Container(
                width: 372,
                height: 38,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Text(
                  "See Location",
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
