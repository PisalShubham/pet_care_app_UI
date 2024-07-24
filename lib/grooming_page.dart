import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Grooming extends StatefulWidget {
  const Grooming({super.key});

  @override
  State<Grooming> createState() => _GroomingState();
}

class _GroomingState extends State<Grooming> {
  List<String> imagesList = [
    "assets/images/page_7/bath.png",
    "assets/images/page_7/hair.png",
    "assets/images/page_7/nail.png",
    "assets/images/page_7/ear.png",
    "assets/images/page_7/teath.png",
    "assets/images/page_7/ticks.png",
    "assets/images/page_7/bath.png",
    "assets/images/page_7/hair.png",
  ];

  List<String> titles = [
    "Bathing & Drying",
    "Hair Trimming",
    "Nail Trimming",
    "Ear Cleaning",
    "Teath Cleaning",
    "........",
    "Bathing & Drying",
    "Hair Trimming",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grooming",
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
          padding: const EdgeInsets.only(
            top: 16,
            left: 24,
            right: 24,
          ),
          child: Column(
            children: [
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "60% OFF",
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "On hair & spa treatment",
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(245, 245, 247, 1),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 77,
                      height: 73,
                      child: Image.asset(
                        'assets/images/page_7/image.png',
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
              Row(children: [
                Text(
                  "Our Services",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const Spacer(),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                  ),
                ),
              ]),
              const SizedBox(height: 18),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 19,
                  mainAxisSpacing: 16,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: imagesList.length,
                itemBuilder: (context, index) => Container(
                  width: 160,
                  height: 174,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 122,
                        height: 101,
                        child: Image.asset(imagesList[index]),
                      ),
                      Text(
                        titles[index],
                        style: GoogleFonts.poppins(
                          color: const Color.fromRGBO(49, 29, 14, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
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
    );
  }
}
