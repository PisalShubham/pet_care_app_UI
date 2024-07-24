import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/doctor_details.dart';
import 'package:pet_care_app/global/bottom_navigation_bar.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  List<String> imageList = [
    'assets/images/page_5/vaccinations.png',
    'assets/images/page_5/operations.png',
    'assets/images/page_5/behaviorals.png',
    'assets/images/page_5/dentistry.png',
  ];

  List<String> services = [
    "Vaccinations",
    "Operations",
    "Behaviorals",
    "Dentistry"
  ];

  // DoctorsList<dr1, dr2>
  List<List<String>> doctorsList = [
    // Doctor 1
    [
      'assets/images/page_5/dr1.png',
      'Dr. Anna Johanson',
      'Services Behavioral',
      '4.8',
      '1 Km'
    ],
    // Doctor 2
    [
      'assets/images/page_5/dr2.png',
      'Dr. Vernon Chwe',
      'Services Surgery',
      '4.9',
      '1.5 Km'
    ],
    // Doctor 3
    [
      'assets/images/page_5/dr1.png',
      'Dr. Anna Johanson',
      'Services Behavioral',
      '4.8',
      '1 Km'
    ],
    // Doctor 4
    [
      'assets/images/page_5/dr2.png',
      'Dr. Vernon Chwe',
      'Services Surgery',
      '4.9',
      '1.5 Km'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 66,
            left: 24,
            right: 24,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // AppBar
            Row(children: [
              Image.asset('assets/images/global/location.png'),
              const SizedBox(width: 7),
              Text(
                "London, UK",
                style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
            const SizedBox(height: 20),
            Container(
              width: 372,
              height: 100,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 220,
                    height: 52,
                    child: Text(
                      "Lets Find Specialist Doctor for Your Pet!",
                      style: GoogleFonts.poppins(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 77,
                    height: 73,
                    child: Image.asset(
                      'assets/images/page_5/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                  suffixIcon: Image.asset(
                    'assets/images/global/search.png',
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(250, 200, 162, 1)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(250, 200, 162, 1)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Our Services Section
            Row(children: [
              Text(
                "Our Services",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              const Spacer(),
              Text(
                "See All",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
              ),
            ]),
            const SizedBox(height: 16),
            SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: imageList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 26),
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    Container(
                      width: 54,
                      height: 54,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      services[index],
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Best Specialist Nearby section
            Text(
              "Best Specialists Nearby",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            // const SizedBox(height: -16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: doctorsList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 16),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DoctorDetails(),
                    ),
                  );
                },
                child: Container(
                  width: 372,
                  height: 122,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: doctorsList[index].length - 4,
                    itemBuilder: (BuildContext context, int i) => Row(
                      children: [
                        SizedBox(
                          width: 90,
                          height: 90,
                          child: Image.asset(
                            doctorsList[index][i],
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Dr. name
                            Text(
                              doctorsList[index][++i],
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            const SizedBox(height: 4),
                            // Speciality
                            Text(
                              doctorsList[index][++i],
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(194, 195, 204, 1),
                              ),
                            ),
                            const SizedBox(height: 4),
                            // Ratings & distance
                            Row(
                              children: [
                                Image.asset('assets/images/global/star.png'),
                                const SizedBox(width: 4),
                                Text(
                                  doctorsList[index][++i],
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(194, 195, 204, 1),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Image.asset(
                                    'assets/images/global/location.png'),
                                const SizedBox(width: 4),
                                Text(
                                  doctorsList[index][++i],
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(194, 195, 204, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: 1,
      //   selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: GestureDetector(
      //         child: Image.asset(
      //           'assets/images/global/home.png',
      //           color: const Color.fromRGBO(126, 128, 143, 1),
      //         ),
      //       ),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: GestureDetector(
      //         child: Image.asset(
      //           'assets/images/global/service.png',
      //           color: const Color.fromRGBO(245, 146, 69, 1),
      //         ),
      //       ),
      //       label: "Service",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: GestureDetector(
      //         child: Image.asset('assets/images/global/profile.png'),
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: GestureDetector(
      //         child: Image.asset('assets/images/global/history.png'),
      //       ),
      //       label: "History",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: GestureDetector(
      //         child: Image.asset('assets/images/global/profile.png'),
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: getBottomBar(1, context),
    );
  }
}
