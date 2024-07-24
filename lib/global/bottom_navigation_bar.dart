import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/home_page.dart';
import 'package:pet_care_app/services_page.dart';
import 'package:pet_care_app/shopping_page.dart';

Stack getBottomBar(index, context) {
  return Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
    BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      selectedIconTheme:
          const IconThemeData(color: Color.fromRGBO(245, 146, 69, 1)),
      unselectedIconTheme:
          const IconThemeData(color: Color.fromRGBO(126, 128, 143, 1)),
      selectedLabelStyle:
          GoogleFonts.poppins(color: const Color.fromRGBO(126, 128, 143, 1)),
      selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
      unselectedItemColor: const Color.fromRGBO(126, 128, 143, 1),
      items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/global/home.png',
            ),
          ),
          activeIcon: Image.asset(
            'assets/images/global/home.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Services(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/global/service.png',
            ),
          ),
          activeIcon: Image.asset(
            'assets/images/global/service.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          label: "Service",
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Image.asset('assets/images/global/profile.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Image.asset('assets/images/global/history.png'),
          ),
          activeIcon: Image.asset(
            'assets/images/global/history.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Image.asset('assets/images/global/profile.png'),
          ),
          activeIcon: Image.asset(
            'assets/images/global/profile.png',
            color: const Color.fromRGBO(245, 146, 69, 1),
          ),
          label: 'Profile',
        ),
      ],
    ),
    Positioned(
      bottom: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ShoppingPage(),
            ),
          );
        },
        child: Container(
          width: 68,
          height: 68,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(245, 146, 69, 1),
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/global/shop.png'),
              const SizedBox(height: 4),
              Text(
                "Shop",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ]);
}
