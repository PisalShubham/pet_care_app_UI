import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  List<List<String>> cources = [
    [
      "assets/images/page_9/1.png",
      "Obedience Courses",
      "By Jhon Smith",
      "4.9",
      "(335)",
    ],
    [
      "assets/images/page_9/2.png",
      "Specialty Classes & Workshops",
      "By Duke Fuzzington",
      "5.0",
      "(500)",
    ],
    [
      "assets/images/page_9/3.png",
      "Puppy Kinderganten and Playgroups",
      "By Sir Fluffington",
      "5.0",
      "(500)",
    ],
    [
      "assets/images/page_9/4.png",
      "Canine Good Citizen Test",
      "By Baron Fuzzypaws",
      "4.8",
      "(220)",
    ],
    [
      "assets/images/page_9/5.png",
      "Theraphy Dogs",
      "By Duke Fuzzington",
      "5.0",
      "(500)",
    ],
    [
      "assets/images/page_9/1.png",
      "Obedience Courses",
      "By Jhon Smith",
      "4.9",
      "(335)",
    ],
    [
      "assets/images/page_9/2.png",
      "Specialty Classes & Workshops",
      "By Duke Fuzzington",
      "5.0",
      "(500)",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Training",
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 24,
          right: 24,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: cources.length,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 16),
          itemBuilder: (BuildContext context, int index) => Container(
            width: 372,
            height: 125,
            padding: const EdgeInsets.all(15.5),
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
              itemCount: cources[index].length - 4,
              itemBuilder: (BuildContext context, int i) => Row(
                children: [
                  // image
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset(
                      cources[index][i],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Course name
                      SizedBox(
                        width: 190,
                        height: 42,
                        child: Text(
                          cources[index][++i],
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Course by
                      Text(
                        cources[index][++i],
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Ratings
                      Row(
                        children: [
                          Image.asset('assets/images/global/star.png'),
                          const SizedBox(width: 4),
                          Text(
                            cources[index][++i],
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(194, 195, 204, 1),
                            ),
                          ),
                          const SizedBox(width: 4),
                          // ()
                          Text(
                            cources[index][++i],
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(194, 195, 204, 1),
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
    );
  }
}
