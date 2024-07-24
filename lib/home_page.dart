import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/global/bottom_navigation_bar.dart';
import 'package:pet_care_app/grooming_page.dart';
import 'package:pet_care_app/notifications_page.dart';
import 'package:pet_care_app/training_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList = [
    'assets/images/page_3/veterinary.png',
    'assets/images/page_3/grooming.png',
    'assets/images/page_3/store.png',
    'assets/images/page_3/training.png',
  ];

  List<String> categories = ["Veterinary", "Grooming", "Store", "Training"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Container(
                width: 56,
                height: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/page_3/sarah.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Hello, Sarah",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Good Morning!",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ]),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(
                    'assets/images/global/bell.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    'assets/images/global/search.png',
                  ),
                  hintText: "search",
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 13,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(250, 200, 162, 1),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 370,
              height: 100,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(22, 34, 51, 0.08),
                    offset: Offset(0, 8),
                    blurRadius: 16,
                    spreadRadius: -4,
                  ),
                ],
              ),
              child: Row(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "In Love With Pets?",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Get all what you need for them",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(245, 146, 69, 1),
                        ),
                      ),
                    ]),
                const Spacer(),
                SizedBox(
                  width: 71,
                  height: 67,
                  child: Image.asset(
                    'assets/images/page_3/image1.png',
                    fit: BoxFit.contain,
                  ),
                )
              ]),
            ),
            const SizedBox(height: 20),
            // Category Section
            Row(children: [
              Text(
                "Category",
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
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    // veterinary
                    GestureDetector(
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/page_3/veterinary.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Veterinary",
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
                    const SizedBox(width: 38),
                    // grooming
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Grooming(),
                          ),
                        );
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/page_3/grooming.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Gromming",
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
                    const SizedBox(width: 38),
                    // pet-store
                    GestureDetector(
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/page_3/store.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Pet Store",
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
                    const SizedBox(width: 38),
                    // training
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TrainingPage(),
                          ),
                        );
                      },
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/page_3/training.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Training",
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
                  ]),
            ),
            const SizedBox(height: 20),
            // Event
            Text(
              "Event",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            Container(
              width: 370,
              height: 126,
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(22, 34, 51, 0.08),
                    offset: Offset(0, 8),
                    blurRadius: 16,
                    spreadRadius: -4,
                  ),
                ],
              ),
              child: Row(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 191,
                        height: 46,
                        child: Text(
                          "Find and Join in Special Events For Your Pets!",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(245, 146, 69, 1))),
                        child: Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ]),
                const Spacer(),
                SizedBox(
                  width: 71,
                  height: 67,
                  child: Image.asset(
                    'assets/images/page_3/image2.png',
                    fit: BoxFit.contain,
                  ),
                )
              ]),
            ),
            const SizedBox(height: 20),
            Text(
              "Community",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: 370,
              height: 126,
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(22, 34, 51, 0.08),
                    offset: Offset(0, 8),
                    blurRadius: 16,
                    spreadRadius: -4,
                  ),
                ],
              ),
              child: Row(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 191,
                        height: 46,
                        child: Text(
                          "Connect and share with communities!",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(245, 146, 69, 1))),
                        child: Text(
                          "See More",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ]),
                const Spacer(),
                SizedBox(
                  width: 71,
                  height: 67,
                  child: Image.asset(
                    'assets/images/page_3/image3.png',
                    fit: BoxFit.contain,
                  ),
                )
              ]),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: getBottomBar(0, context),
    );
  }
}
