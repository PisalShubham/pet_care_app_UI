import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/global/bottom_navigation_bar.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  List<String> imagesList = [
    "assets/images/page_8/pets.png",
    "assets/images/page_8/foods.png",
    "assets/images/page_8/healthy.png",
    "assets/images/page_8/toys.png",
    "assets/images/page_8/accessories.png",
    "assets/images/page_8/clothes.png",
    "assets/images/page_8/pets.png",
    "assets/images/page_8/foods.png",
  ];

  List<String> titles = [
    'Pets',
    'Foods',
    'Healthy',
    'Toys',
    'Accessories',
    'Clothes',
    'Pets',
    'Foods',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 415,
                height: 150,
                padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 236,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Sarah",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Find your lovable Pets",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 27,
                      height: 27,
                      child: Image.asset(
                        'assets/images/global/shop.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -20,
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Something Here",
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 13,
                        color: const Color.fromRGBO(194, 195, 204, 1),
                      ),
                      suffixIcon: Image.asset(
                        'assets/images/global/search.png',
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(250, 200, 162, 1),
                          width: 2,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                            BorderSide(color: Color.fromRGBO(250, 200, 162, 1)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 24, right: 24),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imagesList.length,
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        width: 154,
                        height: 173,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 146, 69, 1),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                              offset: Offset(0, 8),
                              blurRadius: 16,
                              spreadRadius: -4,
                            )
                          ],
                        ),
                        child: Image.asset(
                          imagesList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 22,
                        child: Container(
                          width: 106,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(245, 245, 247, 1),
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50)),
                          ),
                          child: Text(
                            titles[index],
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(245, 146, 69, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: getBottomBar(2, context),
    );
  }
}
